import type { CSSProperties } from "react";
import type { AccountProfile } from "../api/types";

export function accountInitials(account?: AccountProfile | null): string {
  const label = String(account?.displayName || account?.username || account?.telegramId || "WK").trim();
  const parts = label.split(/\s+/).filter(Boolean);
  return (parts.length > 1 ? `${parts[0][0]}${parts.at(-1)?.[0] || ""}` : label.slice(0, 2)).toUpperCase();
}

export function accountHue(account?: AccountProfile | null): number {
  return [...String(account?.telegramId || "wukong")].reduce((total, char) => total + char.charCodeAt(0), 0) % 360;
}

export function AccountAvatar({ account, className = "" }: { account?: AccountProfile | null; className?: string }) {
  const style = { "--avatar-hue": accountHue(account) } as CSSProperties;
  return <span className={`account-avatar ${className}`} style={style} aria-hidden="true">
    {account?.photoUrl ? <img src={String(account.photoUrl)} alt="" referrerPolicy="no-referrer" onError={(event) => event.currentTarget.remove()} /> : null}
    <span>{accountInitials(account)}</span>
  </span>;
}
