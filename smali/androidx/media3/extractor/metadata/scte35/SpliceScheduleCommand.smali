.class public final Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
.super Landroidx/media3/extractor/metadata/scte35/SpliceCommand;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final events:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/versionedparcelable/ParcelImpl$1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroidx/versionedparcelable/ParcelImpl$1;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    new-instance v3, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-direct {v3, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;-><init>(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    iget-object p0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    iget-wide v3, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v3, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v3, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v3, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v3, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    iget v7, v6, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->componentTag:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v6, v6, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->utcSpliceTime:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-wide v3, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v3, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v3, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v3, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
