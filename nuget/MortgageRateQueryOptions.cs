using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MortgageRate
{
    /// <summary>
    /// Query options for the Mortgage Rate API
    /// </summary>
    public class MortgageRateQueryOptions
    {
        /// <summary>
        /// The mortgage type
        /// </summary>
        [JsonProperty("type")]
        public string Type { get; set; }

        /// <summary>
        /// Year to retrieve rates for (1971-present). Requires month parameter.
        /// </summary>
        [JsonProperty("year")]
        public int? Year { get; set; }

        /// <summary>
        /// Month to retrieve rates for (1-12). Required when year is specified.
        /// </summary>
        [JsonProperty("month")]
        public int? Month { get; set; }
    }
}
