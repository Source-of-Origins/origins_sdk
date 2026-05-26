# @origins/sdk (TypeScript)

Generated TypeScript client SDK for Origins. Do not edit by hand — regenerated
by `mix origins_sdk.typescript` in the Origins repository.

## Install

    npm install @origins/sdk phoenix

## Usage

The generated `src/ash_rpc.ts` exposes typed RPC functions. Pair it with a
thin wrapper that injects your auth token, matching how `secrets-universe/`
uses it inside the Origins repo:

```ts
import { signInWithPassword } from "@origins/sdk/src/ash_rpc";
```

A spec describing every action is also shipped at `src/manifest.json`
(see `version` field for the schema version).
