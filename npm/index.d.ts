declare module '@apiverve/countryborders' {
  export interface countrybordersOptions {
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

  export interface countrybordersResponse {
    status: string;
    error: string | null;
    data: CountryBordersData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CountryBordersData {
      country:     null | string;
      cca2:        null | string;
      landlocked:  boolean | null;
      region:      null | string;
      subregion:   null | string;
      coordinates: Coordinates;
      borders:     (null | string)[];
  }
  
  interface Coordinates {
      lat: number | null;
      lng: number | null;
  }

  export default class countrybordersWrapper {
    constructor(options: countrybordersOptions);

    execute(callback: (error: any, data: countrybordersResponse | null) => void): Promise<countrybordersResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: countrybordersResponse | null) => void): Promise<countrybordersResponse>;
    execute(query?: Record<string, any>): Promise<countrybordersResponse>;
  }
}
