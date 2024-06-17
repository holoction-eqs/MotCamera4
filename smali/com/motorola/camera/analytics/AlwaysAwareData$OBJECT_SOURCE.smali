.class public final enum Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum AZTEC:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum CODABAR:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum CODE_128:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum CODE_39:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum CODE_93:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum DATA_MATRIX:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum EAN:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum EAN_13:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum ITF:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum MAXICODE:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum PDF_417:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum QR_CODE:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum RSS_14:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum RSS_EXPANDED:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum UPC_A:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum UPC_E:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum UPC_EAN_EXTENSION:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;


# instance fields
.field public final mCheckInData:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v1, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v0, v1

    const-string v2, "AZTEC"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->AZTEC:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v2, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v1, v2

    const-string v3, "CODABAR"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v2, v3, v5, v6}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODABAR:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v3, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v2, v3

    const-string v5, "CODE_39"

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-direct {v3, v5, v7, v8}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODE_39:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v3, v5

    const-string v7, "CODE_93"

    const/4 v9, 0x6

    invoke-direct {v5, v7, v4, v9}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODE_93:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v4, v5

    const-string v7, "CODE_128"

    const/4 v10, 0x7

    invoke-direct {v5, v7, v6, v10}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODE_128:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v6, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v5, v6

    const-string v7, "DATA_MATRIX"

    const/16 v11, 0x8

    invoke-direct {v6, v7, v8, v11}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->DATA_MATRIX:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v7, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v6, v7

    const-string v8, "EAN"

    const/16 v12, 0x9

    invoke-direct {v7, v8, v9, v12}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->EAN:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v8, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v7, v8

    const-string v9, "EAN_13"

    const/16 v13, 0xa

    invoke-direct {v8, v9, v10, v13}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->EAN_13:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v9, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v8, v9

    const-string v10, "ITF"

    const/16 v14, 0xb

    invoke-direct {v9, v10, v11, v14}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->ITF:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v10, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v9, v10

    const-string v11, "MAXICODE"

    const/16 v15, 0xc

    invoke-direct {v10, v11, v12, v15}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->MAXICODE:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v11, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v10, v11

    const-string v12, "PDF_417"

    const/16 v15, 0xd

    invoke-direct {v11, v12, v13, v15}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->PDF_417:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v12, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v11, v12

    const-string v13, "QR_CODE"

    const/16 v15, 0xe

    invoke-direct {v12, v13, v14, v15}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->QR_CODE:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v13, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v12, v13

    const-string v14, "RSS_14"

    const/16 v15, 0xf

    move-object/from16 v18, v0

    const/16 v0, 0xc

    invoke-direct {v13, v14, v0, v15}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->RSS_14:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v13, v0

    const-string v14, "RSS_EXPANDED"

    const/16 v15, 0x10

    move-object/from16 v19, v1

    const/16 v1, 0xd

    invoke-direct {v0, v14, v1, v15}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->RSS_EXPANDED:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v14, v0

    const-string v1, "UNKNOWN"

    const/4 v15, 0x1

    move-object/from16 v20, v2

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v15}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object v15, v0

    const-string v1, "UPC_A"

    const/16 v2, 0x11

    move-object/from16 v21, v3

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->UPC_A:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object/from16 v16, v0

    const-string v1, "UPC_E"

    const/16 v2, 0x12

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->UPC_E:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object/from16 v17, v0

    const-string v1, "UPC_EAN_EXTENSION"

    const/16 v2, 0x13

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->UPC_EAN_EXTENSION:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    filled-new-array/range {v0 .. v17}, [Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->$VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->mCheckInData:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;
    .locals 1

    const-class v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;
    .locals 1

    sget-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->$VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-virtual {v0}, [Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    return-object v0
.end method
