.class public final enum Lcom/motorola/camera/PreviewSize$AspectRatio;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum CLI_PHOTO:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum CLI_PHOTO_ALT:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum EQUIRECTANGULAR:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE18V7P7:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE20P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE20V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;


# instance fields
.field public final size:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v4, "STANDARD"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v1}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v1, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v4, Lcom/motorola/camera/PreviewSize;

    const/16 v5, 0x10

    const/16 v6, 0x9

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v7, "HD_WIDESCREEN"

    const/4 v8, 0x1

    invoke-direct {v1, v7, v8, v4}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v4, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v7, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v7, v8, v8}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v8, "SQUARE"

    const/4 v9, 0x2

    invoke-direct {v4, v8, v9, v7}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v7, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v8, Lcom/motorola/camera/PreviewSize;

    const/16 v9, 0x12

    invoke-direct {v8, v9, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v9, "EQUIRECTANGULAR"

    invoke-direct {v7, v9, v3, v8}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v7, Lcom/motorola/camera/PreviewSize$AspectRatio;->EQUIRECTANGULAR:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v8, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v9, Lcom/motorola/camera/PreviewSize;

    const/16 v10, 0x13

    invoke-direct {v9, v10, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v10, "RECTANGLE"

    invoke-direct {v8, v10, v2, v9}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v9, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v10, Lcom/motorola/camera/PreviewSize;

    const/16 v11, 0xc3

    const/16 v12, 0x5a

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v11, "RECTANGLE19P5V9"

    const/4 v13, 0x5

    invoke-direct {v9, v11, v13, v10}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v9, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v10, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v11, Lcom/motorola/camera/PreviewSize;

    const/16 v13, 0x14

    invoke-direct {v11, v13, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v13, "RECTANGLE20V9"

    const/4 v14, 0x6

    invoke-direct {v10, v13, v14, v11}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v10, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE20V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v11, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v13, Lcom/motorola/camera/PreviewSize;

    const/16 v14, 0xcd

    invoke-direct {v13, v14, v12}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v12, "RECTANGLE20P5V9"

    const/4 v14, 0x7

    invoke-direct {v11, v12, v14, v13}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v11, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE20P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v12, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v13, Lcom/motorola/camera/PreviewSize;

    const/16 v14, 0x15

    invoke-direct {v13, v14, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v14, "RECTANGLE21V9"

    const/16 v15, 0x8

    invoke-direct {v12, v14, v15, v13}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v12, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v13, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v14, Lcom/motorola/camera/PreviewSize;

    const/16 v15, 0x16

    invoke-direct {v14, v15, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v15, "RECTANGLE22V9"

    invoke-direct {v13, v15, v6, v14}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v13, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v14, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v15, Lcom/motorola/camera/PreviewSize;

    const/16 v5, 0xb4

    const/16 v6, 0x4d

    invoke-direct {v15, v5, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v5, "RECTANGLE18V7P7"

    const/16 v6, 0xa

    invoke-direct {v14, v5, v6, v15}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v14, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE18V7P7:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v15, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v5, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v5, v3, v2}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v2, "CLI_PHOTO"

    const/16 v3, 0xb

    invoke-direct {v15, v2, v3, v5}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v15, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v6, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    const/16 v3, 0x23e

    const/16 v5, 0x320

    invoke-direct {v2, v3, v5}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v3, "CLI_PHOTO_ALT"

    const/16 v5, 0xc

    invoke-direct {v6, v3, v5, v2}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO_ALT:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v5, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    move-object/from16 v16, v6

    const/16 v3, 0x10

    const/16 v6, 0x9

    invoke-direct {v2, v6, v3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v3, "CLI_VIDEO"

    const/16 v6, 0xd

    invoke-direct {v5, v3, v6, v2}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-object v2, v4

    move-object v3, v7

    move-object v4, v8

    move-object/from16 v17, v5

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v13}, [Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->$VALUES:[Lcom/motorola/camera/PreviewSize$AspectRatio;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 1

    const-class v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->$VALUES:[Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0}, [Lcom/motorola/camera/PreviewSize$AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/PreviewSize$AspectRatio;

    return-object v0
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p0

    return p0
.end method

.method public final getTrueAspectRatio()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    return p0
.end method
