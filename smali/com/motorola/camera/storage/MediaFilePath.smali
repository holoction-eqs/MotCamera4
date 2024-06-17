.class public final Lcom/motorola/camera/storage/MediaFilePath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\u0013\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0005H\u00d6\u0001J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0003J\u0019\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u00a8\u0006&"
    }
    d2 = {
        "Lcom/motorola/camera/storage/MediaFilePath;",
        "Landroid/os/Parcelable;",
        "mediaVolume",
        "Lcom/motorola/camera/storage/MediaVolume;",
        "relativePath",
        "",
        "fileName",
        "enablePending",
        "",
        "(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;Z)V",
        "getEnablePending",
        "()Z",
        "getFileName",
        "()Ljava/lang/String;",
        "getMediaVolume",
        "()Lcom/motorola/camera/storage/MediaVolume;",
        "getRelativePath",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "withFileName",
        "newFileName",
        "withMediaVolume",
        "newMediaVolume",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/storage/MediaFilePath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final enablePending:Z

.field private final fileName:Ljava/lang/String;

.field private final mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

.field private final relativePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/signin/internal/zab;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/google/android/gms/signin/internal/zab;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/storage/MediaFilePath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "mediaVolume"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relativePath"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    iput-object p2, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/storage/MediaFilePath;Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/motorola/camera/storage/MediaFilePath;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/camera/storage/MediaFilePath;->copy(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;Z)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/motorola/camera/storage/MediaVolume;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    return p0
.end method

.method public final copy(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;Z)Lcom/motorola/camera/storage/MediaFilePath;
    .locals 0

    const-string p0, "mediaVolume"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "relativePath"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fileName"

    invoke-static {p3, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/storage/MediaFilePath;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/storage/MediaFilePath;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/storage/MediaFilePath;

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    iget-object v3, p1, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    iget-boolean p1, p1, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEnablePending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    return p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaVolume()Lcom/motorola/camera/storage/MediaVolume;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    return-object p0
.end method

.method public final getRelativePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaVolume;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v0

    iget-boolean p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MediaFilePath(mediaVolume="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", relativePath="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fileName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", enablePending="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;
    .locals 3

    const-string v0, "newFileName"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/storage/MediaFilePath;

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    iget-object v2, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final withMediaVolume(Lcom/motorola/camera/storage/MediaVolume;)Lcom/motorola/camera/storage/MediaFilePath;
    .locals 3

    const-string v0, "newMediaVolume"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/storage/MediaFilePath;

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/storage/MediaVolume;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->enablePending:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
