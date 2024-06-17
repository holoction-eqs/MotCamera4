.class Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$LocationTypeAdapter;,
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$UriTypeAdapter;,
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;,
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;,
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$ImagingModelTypeAdapter;,
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$SkipTypeAdapter;
    }
.end annotation


# instance fields
.field public final SKIP_FIELD_SET:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/reflect/Method;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, [Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, [B

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/motorola/camera/saving/CaptureHolder;

    aput-object v3, v1, v2

    new-instance v2, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$1;

    invoke-direct {v2}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$1;-><init>()V

    const/4 v3, 0x7

    iget-object v2, v2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    aput-object v2, v1, v3

    new-instance v2, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$2;

    invoke-direct {v2}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$2;-><init>()V

    const/16 v3, 0x8

    iget-object v2, v2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;->SKIP_FIELD_SET:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2

    iget-object v0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    const-class v1, Landroid/location/Location;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$LocationTypeAdapter;

    invoke-direct {p0}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$LocationTypeAdapter;-><init>()V

    return-object p0

    :cond_0
    const-class v0, Landroid/net/Uri;

    iget-object v1, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$UriTypeAdapter;

    invoke-direct {p0}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$UriTypeAdapter;-><init>()V

    return-object p0

    :cond_1
    const-class v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;

    invoke-direct {p0, p1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object p0

    :cond_2
    const-class v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;

    invoke-direct {p0, p1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object p0

    :cond_3
    const-class p1, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$ImagingModelTypeAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$ImagingModelTypeAdapter;-><init>(I)V

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;->SKIP_FIELD_SET:Ljava/util/Set;

    iget-object p1, p2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$SkipTypeAdapter;

    invoke-direct {p0}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$SkipTypeAdapter;-><init>()V

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
