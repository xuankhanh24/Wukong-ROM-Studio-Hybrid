export type Language = "vi" | "en";
export type ThemePreference = "system" | "light" | "dark";

export interface AccountProfile {
  telegramId?: string | number;
  userId?: string | number;
  username?: string;
  displayName?: string;
  photoUrl?: string;
  role?: "admin" | "user" | string;
  accessStatus?: "approved" | "pending" | "revoked" | string;
  buildCredits?: number;
  jobCount?: number;
  unlimited?: boolean;
  [key: string]: unknown;
}

export interface AdminUser extends AccountProfile {
  telegramId: string;
  accessStatus?: "approved" | "pending" | "revoked" | string;
  concurrentJobLimit?: number;
  firstSeenAt?: string;
  lastSeenAt?: string;
  currentActivity?: Record<string, unknown> | null;
}

export interface SessionPayload {
  user?: AccountProfile | null;
  maintenance?: { enabled?: boolean; message?: string; updatedAt?: string; updatedBy?: string } | null;
  [key: string]: unknown;
}

export interface SourceProbeResult {
  valid?: boolean;
  provider?: string;
  filename?: string;
  sizeBytes?: number;
  productName?: string;
  device?: string;
  version?: string;
  androidVersion?: string;
  securityPatch?: string;
  buildDate?: string;
  otaType?: string;
  deepInspected?: boolean;
  [key: string]: unknown;
}

export interface Job {
  job_id?: string;
  jobId?: string;
  status?: string;
  stage?: string;
  progress?: number;
  created_at?: string;
  createdAt?: string;
  updated_at?: string;
  updatedAt?: string;
  finished_at?: string;
  device?: string;
  product?: string;
  preset?: string;
  runner?: string;
  artifact?: Record<string, unknown> | null;
  [key: string]: unknown;
}

export interface JobEvent {
  sequence?: number;
  timestamp?: string;
  type?: string;
  stage?: string;
  message?: string;
  [key: string]: unknown;
}

export interface JobsPayload {
  jobs?: Job[];
  activeJob?: Job | null;
  events?: JobEvent[];
  eventsHasMore?: boolean;
  [key: string]: unknown;
}

export interface CatalogPayload {
  devices?: Array<Record<string, unknown>>;
  mods?: Array<Record<string, unknown>>;
  versions?: Array<Record<string, unknown>>;
  [key: string]: unknown;
}

export interface SystemHealth {
  system?: unknown;
  runner?: unknown;
  cache?: unknown;
  maintenance?: { enabled?: boolean; message?: string } | null;
  [key: string]: unknown;
}

export interface BatchBuild {
  batchId?: string;
  status?: string;
  itemCount?: number;
  items?: Array<Record<string, unknown>>;
  events?: Array<Record<string, unknown>>;
  [key: string]: unknown;
}

export interface RecipeDraft {
  execution: string;
  source: string;
  device: string;
  preset: string;
  modVersion: string;
  mods: string[];
  package: boolean;
  publish: boolean;
  notify: boolean;
  releaseVersion?: string;
  customPresetLabel?: string;
  debloatPaths?: string[];
  pipeline?: string[];
  [key: string]: unknown;
}

export interface ApiErrorShape {
  code?: string;
  message?: string;
  payload?: unknown;
  connectionFailed?: boolean;
  status?: number;
}
