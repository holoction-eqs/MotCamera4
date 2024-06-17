.class public final Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDurationUs:J

.field public final componentSpliceList:Ljava/util/List;

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final uniqueProgramId:I

.field public final utcSpliceTime:J


# direct methods
.method public constructor <init>(JZZZLjava/util/ArrayList;JZJIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    iput-boolean p3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    iput-boolean p4, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    iput-boolean p5, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    iput-wide p7, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    iput-boolean p9, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    iput-wide p10, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    iput p12, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    iput p13, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    iput p14, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_3
    if-ge v4, v0, :cond_3

    .line 2
    new-instance v5, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJ)V

    .line 3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    return-void
.end method
