declare module '@apiverve/mortgagerate' {
  export interface mortgagerateOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface mortgagerateResponse {
    status: string;
    error: string | null;
    data: MortgageRateData;
    code?: number;
  }


  interface MortgageRateData {
      rateType:    string;
      name:        string;
      term:        number;
      type:        string;
      rate:        number;
      date:        Date;
      country:     string;
      lastUpdated: Date;
  }

  export default class mortgagerateWrapper {
    constructor(options: mortgagerateOptions);

    execute(callback: (error: any, data: mortgagerateResponse | null) => void): Promise<mortgagerateResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: mortgagerateResponse | null) => void): Promise<mortgagerateResponse>;
    execute(query?: Record<string, any>): Promise<mortgagerateResponse>;
  }
}
