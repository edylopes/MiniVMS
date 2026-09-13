unit MiniVMS.Infrastructure.Streaming.RtspPlayer;

interface

uses
  MiniVMS.Application.Contracts.RtspPlayer;

type
  TRtspPlayer = class(TInterfacedObject, IRtspPlayer)
  private
    FConnected: Boolean;

  public
    constructor Create;
    destructor Destroy; override;

    procedure Connect(
      const AUrl: string;
      AWindowHandle: NativeUInt
    );

    procedure Disconnect;

    function IsConnected: Boolean;
  end;

implementation

uses
  System.SysUtils;

constructor TRtspPlayer.Create;
begin
  inherited Create;

  FConnected := False;
end;

destructor TRtspPlayer.Destroy;
begin
  Disconnect;

  inherited;
end;

procedure TRtspPlayer.Connect(
  const AUrl: string;
  AWindowHandle: NativeUInt
);
begin
  if AUrl.Trim.IsEmpty then
    raise Exception.Create('URL RTSP não informada.');

  if AWindowHandle = 0 then
    raise Exception.Create('Handle do monitor inválido.');

  {
    Aqui posteriormente entra:

    LibVLC
      ou
    FFmpeg

    1. abrir URL RTSP
    2. receber stream
    3. decodificar H264/H265
    4. renderizar no AWindowHandle
  }

  FConnected := True;
end;

procedure TRtspPlayer.Disconnect;
begin
  if not FConnected then
    Exit;

  {
    Aqui vamos:

    parar player
    liberar media
    liberar decoder
    liberar stream
  }

  FConnected := False;
end;

function TRtspPlayer.IsConnected: Boolean;
begin
  Result := FConnected;
end;

end.
