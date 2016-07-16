unit DAgenda.Tests.Connection.FireDAC.MarshmallowBuilder;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TFireDACMarshmallowConnectionBuilderTest = class
  public
    [Test]
    procedure TestConnectionBuild;
  end;

implementation

uses
  DAgenda.Classes.Connection.Interfaces,
  DAgenda.Classes.Connection.FireDAC.MarshmallowBuilder,

  Spring.Persistence.Core.Interfaces;

procedure TFireDACMarshmallowConnectionBuilderTest.TestConnectionBuild;
var
  connection: IDBConnection;
  connectionBuilder: IConnectionBuilder<IDBConnection>;
begin
  connectionBuilder := TFireDACMarshmallowConnectionBuilder.Create;
  connection := connectionBuilder.CreateConfiguredSession.Build;
  Assert.IsNotNull(connection, 'Conex�o n�o foi constru�da.');
end;

initialization
  TDUnitX.RegisterTestFixture(TFireDACMarshmallowConnectionBuilderTest);

end.
