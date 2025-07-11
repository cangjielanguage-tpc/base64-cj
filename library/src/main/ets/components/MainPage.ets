import { requireCJLib } from "libark_interop_loader.so";

export declare interface CustomLib {
  toBase64StringArkts(data: string): string

  fromBase64StringArkts(data: string): string

  toBase64StringUtf8Arkts(data: ArrayBuffer): string

  fromBase64StringUtf8Arkts(data: string): ArrayBuffer

  fromBase64Uint8Array(data: ArrayBuffer): ArrayBuffer
}

const cjlib = requireCJLib("libohos_app_cangjie_msg.so") as CustomLib

export function encode_Uint8Array(data: ArrayBuffer): string {
  return cjlib.toBase64StringUtf8Arkts(data)
}

export function encode_String(data: string): string {
  return cjlib.toBase64StringArkts(data)
}

export function decode_string(data: string): string {
  return cjlib.fromBase64StringArkts(data)
}

export function decode_String_toUint8Array(data: string): ArrayBuffer {
  return cjlib.fromBase64StringUtf8Arkts(data)
}

export function decode_Uint8Array(data: ArrayBuffer): ArrayBuffer {
  return cjlib.fromBase64Uint8Array(data)
}
