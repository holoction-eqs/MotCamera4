.class public final Lcom/google/zxing/client/result/VINParsedResult;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public final countryCode:Ljava/lang/String;

.field public final modelYear:I

.field public final plantCode:C

.field public final sequentialNumber:Ljava/lang/String;

.field public final vehicleDescriptorSection:Ljava/lang/String;

.field public final vehicleIdentifierSection:Ljava/lang/String;

.field public final vin:Ljava/lang/String;

.field public final worldManufacturerID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->VIN:Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/zxing/client/result/VINParsedResult;->vin:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/VINParsedResult;->worldManufacturerID:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleDescriptorSection:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleIdentifierSection:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/zxing/client/result/VINParsedResult;->countryCode:Ljava/lang/String;

    iput p6, p0, Lcom/google/zxing/client/result/VINParsedResult;->modelYear:I

    iput-char p7, p0, Lcom/google/zxing/client/result/VINParsedResult;->plantCode:C

    iput-object p8, p0, Lcom/google/zxing/client/result/VINParsedResult;->sequentialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisplayResult()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->worldManufacturerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleDescriptorSection:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleIdentifierSection:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/zxing/client/result/VINParsedResult;->countryCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget v3, p0, Lcom/google/zxing/client/result/VINParsedResult;->modelYear:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v3, p0, Lcom/google/zxing/client/result/VINParsedResult;->plantCode:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->sequentialNumber:Ljava/lang/String;

    invoke-static {v0, p0, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
