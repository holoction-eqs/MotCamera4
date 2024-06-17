.class public abstract Lcom/motorola/camera/background/common/ImageBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CACHE_FILE:Ljava/lang/String;

.field public static final Companion:Lcom/motorola/camera/background/common/ImageBase$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bufferMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field private cacheDir:Ljava/lang/String;

.field private height:I

.field private imageFormat:Lcom/motorola/camera/background/common/IOFormat;

.field private name:Ljava/lang/String;

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/common/ImageBase$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/ImageBase$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/ImageBase;->Companion:Lcom/motorola/camera/background/common/ImageBase$Companion;

    const-class v0, Lcom/motorola/camera/background/common/ImageBase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/ImageBase;->TAG:Ljava/lang/String;

    const-string v0, "map-cache-file"

    sput-object v0, Lcom/motorola/camera/background/common/ImageBase;->CACHE_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/motorola/camera/background/common/IOFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/background/common/IOFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/ImageBase;-><init>(Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/background/common/ImageBase;->cacheDir:Ljava/lang/String;

    sget-object v2, Lcom/motorola/camera/background/common/ImageBase;->CACHE_FILE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableMap<com.motorola.camera.background.common.ImageBase.ImageBufferType, kotlin.ByteArray>"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/LazyKt__LazyKt;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/background/common/ImageBase;->bufferMap:Ljava/util/Map;

    return-void

    :catchall_0
    move-exception p0

    .line 3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/motorola/camera/background/common/IOFormat;->UNDEFINED:Lcom/motorola/camera/background/common/IOFormat;

    iput-object v0, p0, Lcom/motorola/camera/background/common/ImageBase;->imageFormat:Lcom/motorola/camera/background/common/IOFormat;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/background/common/ImageBase;->bufferMap:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageBase;->imageFormat:Lcom/motorola/camera/background/common/IOFormat;

    iput-object p2, p0, Lcom/motorola/camera/background/common/ImageBase;->name:Ljava/lang/String;

    iput p3, p0, Lcom/motorola/camera/background/common/ImageBase;->width:I

    iput p4, p0, Lcom/motorola/camera/background/common/ImageBase;->height:I

    iput-object p5, p0, Lcom/motorola/camera/background/common/ImageBase;->cacheDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBufferMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageBase;->bufferMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getCacheDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageBase;->cacheDir:Ljava/lang/String;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/ImageBase;->height:I

    return p0
.end method

.method public final getImageFormat()Lcom/motorola/camera/background/common/IOFormat;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageBase;->imageFormat:Lcom/motorola/camera/background/common/IOFormat;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageBase;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/ImageBase;->width:I

    return p0
.end method

.method public final setBufferMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageBase;->bufferMap:Ljava/util/Map;

    return-void
.end method

.method public final setCacheDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageBase;->cacheDir:Ljava/lang/String;

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/common/ImageBase;->height:I

    return-void
.end method

.method public final setImageFormat(Lcom/motorola/camera/background/common/IOFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageBase;->imageFormat:Lcom/motorola/camera/background/common/IOFormat;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageBase;->name:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/common/ImageBase;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageBase;->imageFormat:Lcom/motorola/camera/background/common/IOFormat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/motorola/camera/background/common/ImageBase;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/motorola/camera/background/common/ImageBase;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/background/common/ImageBase;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/motorola/camera/background/common/ImageBase;->cacheDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p1, p0, Lcom/motorola/camera/background/common/ImageBase;->cacheDir:Ljava/lang/String;

    sget-object p2, Lcom/motorola/camera/background/common/ImageBase;->CACHE_FILE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageBase;->bufferMap:Ljava/util/Map;

    invoke-virtual {p2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p2, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
