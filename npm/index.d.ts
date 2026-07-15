declare module '@apiverve/mortgagerate' {
  export interface mortgagerateOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface mortgagerateResponse {
    status: string;
    error: string | null;
    data: MortgageRateData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MortgageRateData {
      rateType:        null | string;
      name:            null | string;
      term:            number | null;
      type:            null | string;
      country:         null | string;
      year:            number | null;
      month:           number | null;
      count:           number | null;
      rates:           Rate[];
      change1W:        number | null;
      changeDirection: null | string;
      previousRate:    number | null;
      previousDate:    Date | null;
  }
  
  interface Rate {
      week: Date | null;
      rate: number | null;
  }

  export default class mortgagerateWrapper {
    constructor(options: mortgagerateOptions);

    execute(callback: (error: any, data: mortgagerateResponse | null) => void): Promise<mortgagerateResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: mortgagerateResponse | null) => void): Promise<mortgagerateResponse>;
    execute(query?: Record<string, any>): Promise<mortgagerateResponse>;
  }
}
