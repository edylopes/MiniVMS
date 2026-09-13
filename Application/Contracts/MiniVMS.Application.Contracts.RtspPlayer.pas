unit MiniVMS.Application.Contracts.RtspPlayer;

interface

type
  IRtspPlayer = interface
    ['{6A501674-9675-46AB-A52E-23598A17AE31}']

    procedure Connect(
      const AUrl: string;
      AWindowHandle: NativeUInt
    );

    procedure Disconnect;

    function IsConnected: Boolean;
  end;

implementation

end.
