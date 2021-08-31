export type PughpughId =
  | "email";

export type PughpughKey =
  | "Email";

export enum Pughpugh {
  Email = "email",
}

export const PUGHPUGH_CODEPOINTS: { [key in Pughpugh]: string } = {
  [Pughpugh.Email]: "61697",
};
