.class public final Landroidx/media3/extractor/metadata/id3/MlltFrame;
.super Landroidx/media3/extractor/metadata/id3/Id3Frame;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/id3/MlltFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bytesBetweenReference:I

.field public final bytesDeviations:[I

.field public final millisecondsBetweenReference:I

.field public final millisecondsDeviations:[I

.field public final mpegFramesBetweenReference:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/versionedparcelable/ParcelImpl$1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/versionedparcelable/ParcelImpl$1;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[I[I)V
    .locals 1

    .line 1
    const-string v0, "MLLT"

    invoke-direct {p0, v0}, Landroidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    iput p2, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesBetweenReference:I

    iput p3, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    iput-object p4, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesDeviations:[I

    iput-object p5, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    const-string v0, "MLLT"

    invoke-direct {p0, v0}, Landroidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesBetweenReference:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    iput-object v0, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesDeviations:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    iget v2, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    iget v3, p1, Landroidx/media3/extractor/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesBetweenReference:I

    iget v3, p1, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesBetweenReference:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    iget v3, p1, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesDeviations:[I

    iget-object v3, p1, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesDeviations:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    iget-object p1, p1, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesBetweenReference:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesDeviations:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesBetweenReference:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesDeviations:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
