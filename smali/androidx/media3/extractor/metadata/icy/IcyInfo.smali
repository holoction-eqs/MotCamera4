.class public final Landroidx/media3/extractor/metadata/icy/IcyInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/icy/IcyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final rawMetadata:[B

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/Metadata$1;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroidx/media3/common/Metadata$1;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object v0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    iput-object p1, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroidx/media3/extractor/metadata/icy/IcyInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/icy/IcyInfo;

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    iget-object p1, p1, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public final populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    if-eqz p0, :cond_0

    iput-object p0, p1, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\""

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
