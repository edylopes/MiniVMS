unit MiniVMS.Application.Interfaces.CameraStream;

interface

uses
  Winapi.Windows;

type
  ICameraStream = interface
    ['{8D8D71D2-D9D1-4EB6-B396-23DBCC8A3D67}']

    procedure Connect(
      const ASource: string;
      AHandle: HWND
    );

    procedure Disconnect;

    function IsConnected: Boolean;
  end;

implementation

end.
