.class public final Landroidx/media3/common/Metadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/common/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final entries:[Landroidx/media3/common/Metadata$Entry;

.field public final presentationTimeUs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/Metadata$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/Metadata$1;-><init>(I)V

    sput-object v0, Landroidx/media3/common/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>(J[Landroidx/media3/common/Metadata$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    iput-object p3, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    iput-object v0, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-class v2, Landroidx/media3/common/Metadata$Entry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Metadata$Entry;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {p0, p1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/common/Metadata$Entry;)V
    .locals 2

    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/Metadata;-><init>(J[Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method


# virtual methods
.method public final varargs copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;
    .locals 5

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/common/Metadata;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v1, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    array-length v1, v1

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v2, [Landroidx/media3/common/Metadata$Entry;

    iget-wide p0, p0, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    invoke-direct {v0, p0, p1, v2}, Landroidx/media3/common/Metadata;-><init>(J[Landroidx/media3/common/Metadata$Entry;)V

    return-object v0
.end method

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

    const-class v2, Landroidx/media3/common/Metadata;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/Metadata;

    iget-object v2, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    iget-object v3, p1, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    iget-wide p0, p1, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final get(I)Landroidx/media3/common/Metadata$Entry;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length p0, p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "entries="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v3, p0, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    cmp-long p0, v3, v1

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, ", presentationTimeUs="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object p2, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v0, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
