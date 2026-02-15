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
        /// Specific year to retrieve all weekly rates for (1971-present). Returns latest rate if not specified.
        /// </summary>
        [JsonProperty("year")]
        public string Year { get; set; }
    }
}
