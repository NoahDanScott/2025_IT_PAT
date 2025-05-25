unit Hashing;

interface

uses SysUtils, math;

type THash = class

private const

    K: array [0 .. 63] of FixedUInt = ($428A2F98, $71374491, $B5C0FBCF,
      $E9B5DBA5, $3956C25B, $59F111F1, $923F82A4, $AB1C5ED5, $D807AA98,
      $12835B01, $243185BE, $550C7DC3, $72BE5D74, $80DEB1FE, $9BDC06A7,
      $C19BF174, $E49B69C1, $EFBE4786, $0FC19DC6, $240CA1CC, $2DE92C6F,
      $4A7484AA, $5CB0A9DC, $76F988DA, $983E5152, $A831C66D, $B00327C8,
      $BF597FC7, $C6E00BF3, $D5A79147, $06CA6351, $14292967, $27B70A85,
      $2E1B2138, $4D2C6DFC, $53380D13, $650A7354, $766A0ABB, $81C2C92E,
      $92722C85, $A2BFE8A1, $A81A664B, $C24B8B70, $C76C51A3, $D192E819,
      $D6990624, $F40E3585, $106AA070, $19A4C116, $1E376C08, $2748774C,
      $34B0BCB5, $391C0CB3, $4ED8AA4A, $5B9CCA4F, $682E6FF3, $748F82EE,
      $78A5636F, $84C87814, $8CC70208, $90BEFFFA, $A4506CEB, $BEF9A3F7,
      $C67178F2);

  var
    a, b, c, d, e, f, g, h: FixedUInt;
    aH : array [0..7] of FixedUInt;
    arrBlock: array [0..63] of Byte; //Delphi has a built in data type to represent a byte
  public
    arrH: array [0 .. 63] of FixedUInt;
    function GeneratingHashValues(sInput : string): FixedUInt;
    function RightRotate(N, S: FixedUInt): FixedUInt;
    function Compression(): string;

end;

implementation

{ THash }

function THash.Compression: string;
var
  sig1, sig0: FixedUInt;
  ch, mj, temp1, temp2: FixedUInt;
  I: Integer;
begin
  //
  {$OVERFLOWCHECKS OFF}
  a := $6A09E667;
  b := $BB67AE85;
  c := $3C6EF372;
  d := $A54FF53A;
  e := $510E527F;
  f := $9B05688C;
  g := $1F83D9AB;
  h := $5BE0CD19;

  aH[0] := a;
  aH[1] := b;
  aH[2] := c;
  ah[3] := d;
  aH[4] := e;
  aH[5] := f;
  aH[6] := g;
  aH[7] := h;

  for I := 0 to 63 do
  begin
    sig1 := (RightRotate(e, 6)) XOR (RightRotate(e, 11)) XOR (RightRotate(e, 25));
    ch := (e AND f) XOR ((not e) AND g);
    temp1 := h + sig1 + ch + k[i] + arrH[i];

    sig0 := (RightRotate(a, 2)) XOR (RightRotate(a, 13)) XOR (RightRotate(a, 22));
    mj := (a AND b) xor (a and c) xor (b and c);
    temp2 := sig0 + mj;

    h := g;
    g := f;
    f := e;
    e := d + temp1;
    d := c;
    c := b;
    b := a;
    a := temp1 + temp2;
  end;

  aH[0] := aH[0]+a;
  aH[1] := aH[1]+b;
  aH[2] := aH[2]+c;
  ah[3] := aH[3]+d;
  aH[4] := aH[4]+e;
  aH[5] := aH[5]+f;
  aH[6] := aH[6]+g;
  aH[7] := aH[7]+h;
  //TODO: add them seperatly as a string not all in one
  //inttohex() + inttohex()
  for I := 0 to 7 do
    begin
      result :=  result + inttohex(aH[i]);
    end;
  {$OVERFLOWCHECKS ON}
end;

function THash.GeneratingHashValues(sInput: string): FixedUInt;
var
  sig0: FixedUInt;
  sig1: FixedUInt;
  I: Integer;
  vValue: FixedUInt;
begin
{$OVERFLOWCHECKS OFF}
  //assgning password to a block
  for I := 0 to length(sInput) - 1 do
    begin
      arrBlock[i] := Byte(sInput[i + 1]);
    end;

     arrBlock[length(sInput)] := 1 shl 7; //setting
     //append last with length of original
     i := 8 * length(sInput);
     arrBlock[62] := i shr 8;
     arrBlock[63] := i and Byte.MaxValue; //simpler than searching via if statement

     //setting vaules to first 16 arrH values
     i := 0;
     while i < 64 do
     begin
      vValue := fixedUInt(arrBlock[i + 3]); //reading values backwards
      vValue := vValue or (fixedUInt(arrBlock[i + 2]) shl 8);
      vValue := vValue or (fixedUInt(arrBlock[i + 1]) shl 16);
      vValue := vValue or (fixedUInt(arrBlock[i]) shl 24);
      //prevent overwriting values
      arrH[i div 4] := vValue;

      i := i + 4;
     end;

  //setting arrH[16..63] values
  for I := 16 to 63 do
  begin
    sig0 := (RightRotate(arrH[I - 15], 7)) xor (RightRotate(arrH[I - 15], 18))
      xor (arrH[I - 15] shr 3);

    sig1 := (RightRotate(arrH[I - 2], 17)) xor (RightRotate(arrH[I - 2], 19))
      xor (arrH[I - 2] shr 10);
    arrH[i] := arrH[I - 16] + sig0 + arrH[I - 7] + sig1;
  end;
{$OVERFLOWCHECKS ON}
end;

function THash.RightRotate(N, S: FixedUInt): FixedUInt;
begin
result := (N shr S) OR (N shl (32 - S));
end;

end.
