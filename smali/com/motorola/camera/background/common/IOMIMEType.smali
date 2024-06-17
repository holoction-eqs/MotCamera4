.class public final enum Lcom/motorola/camera/background/common/IOMIMEType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum APP6_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum BINARY_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final CREATOR:Lcom/motorola/camera/background/common/IOMIMEType$CREATOR;

.field public static final enum EXIF_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum JPEG_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum JSON_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum MAKERNOTE_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum UNDEFINED:Lcom/motorola/camera/background/common/IOMIMEType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/background/common/IOMIMEType;->UNDEFINED:Lcom/motorola/camera/background/common/IOMIMEType;

    new-instance v1, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v2, "RAW_IMAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/background/common/IOMIMEType;->RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    new-instance v2, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v3, "BINARY_DATA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->BINARY_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    new-instance v3, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v4, "JPEG_IMAGE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->JPEG_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    new-instance v4, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v5, "TEXT_DATA"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v6, "JSON_DATA"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/background/common/IOMIMEType;->JSON_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    new-instance v6, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v7, "APP6_DATA"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/background/common/IOMIMEType;->APP6_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    new-instance v7, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v8, "EXIF_DATA"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/background/common/IOMIMEType;->EXIF_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    new-instance v8, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v9, "MAKERNOTE_DATA"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/background/common/IOMIMEType;->MAKERNOTE_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    filled-new-array/range {v0 .. v8}, [Lcom/motorola/camera/background/common/IOMIMEType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/IOMIMEType;->$VALUES:[Lcom/motorola/camera/background/common/IOMIMEType;

    new-instance v0, Lcom/motorola/camera/background/common/IOMIMEType$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/IOMIMEType$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/IOMIMEType;->CREATOR:Lcom/motorola/camera/background/common/IOMIMEType$CREATOR;

    const-class v0, Lcom/motorola/camera/background/common/IOMIMEType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/IOMIMEType;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/IOMIMEType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/IOMIMEType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/IOMIMEType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/IOMIMEType;->$VALUES:[Lcom/motorola/camera/background/common/IOMIMEType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/IOMIMEType;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "error"

    return-object p0

    :pswitch_0
    const-string p0, "makernote"

    return-object p0

    :pswitch_1
    const-string p0, "exif"

    return-object p0

    :pswitch_2
    const-string p0, "app6"

    return-object p0

    :pswitch_3
    const-string p0, "json"

    return-object p0

    :pswitch_4
    const-string p0, "txt"

    return-object p0

    :pswitch_5
    const-string p0, "jpeg"

    return-object p0

    :pswitch_6
    const-string p0, "bin"

    return-object p0

    :pswitch_7
    const-string p0, "raw_image"

    return-object p0

    :pswitch_8
    const-string p0, "undefined"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
