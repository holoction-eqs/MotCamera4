.class public final Landroidx/media3/common/AdPlaybackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

.field public static final FIELD_AD_GROUPS:Ljava/lang/String;

.field public static final FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

.field public static final FIELD_CONTENT_DURATION_US:Ljava/lang/String;

.field public static final FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

.field public static final NONE:Landroidx/media3/common/AdPlaybackState;

.field public static final REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;


# instance fields
.field public final adGroupCount:I

.field public final adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

.field public final adResumePositionUs:J

.field public final adsId:Ljava/lang/Object;

.field public final contentDurationUs:J

.field public final removedAdGroupCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v8, Landroidx/media3/common/AdPlaybackState;

    const/4 v1, 0x0

    const/4 v9, 0x0

    new-array v2, v9, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    sput-object v8, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    new-array v15, v9, [I

    new-array v1, v9, [Landroid/net/Uri;

    new-array v2, v9, [J

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object v10, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v20}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v2, v1

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v15

    invoke-static {v15, v2, v3, v9}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v2, v1

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    iget-object v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [Landroid/net/Uri;

    new-instance v2, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v14, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-wide v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    const/4 v13, 0x0

    move-object v10, v2

    move-object/from16 v17, v1

    move-wide/from16 v18, v3

    move/from16 v20, v0

    invoke-direct/range {v10 .. v20}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    sput-object v2, Landroidx/media3/common/AdPlaybackState;->REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v1, Landroidx/media3/common/AdPlaybackState;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iput-wide p5, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    array-length p1, p2

    add-int/2addr p1, p7

    iput p1, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iput-object p2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iput p7, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget v3, p1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v4, p1, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget-wide v4, p1, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    iget v3, p1, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object p1, p1, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

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

.method public final getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 1

    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ge p1, v0, :cond_0

    sget-object p0, Landroidx/media3/common/AdPlaybackState;->REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isLivePostrollPlaceholder(I)Z
    .locals 7

    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    iget-boolean p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-eqz p1, :cond_0

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    iget p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdPlaybackState(adsId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adGroups=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v4, v3

    const-string v5, "])"

    if-ge v2, v4, :cond_8

    const-string v4, "adGroup(timeUs="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v2

    iget-wide v6, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", ads=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v1

    :goto_1
    aget-object v6, v3, v2

    iget-object v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v6, v6

    const-string v7, ", "

    const/4 v8, 0x1

    if-ge v4, v6, :cond_6

    const-string v6, "ad(state="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    iget-object v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v6, v6, v4

    if-eqz v6, :cond_4

    if-eq v6, v8, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    const/4 v9, 0x4

    if-eq v6, v9, :cond_0

    const/16 v6, 0x3f

    goto :goto_2

    :cond_0
    const/16 v6, 0x21

    goto :goto_2

    :cond_1
    const/16 v6, 0x50

    goto :goto_2

    :cond_2
    const/16 v6, 0x53

    goto :goto_2

    :cond_3
    const/16 v6, 0x52

    goto :goto_2

    :cond_4
    const/16 v6, 0x5f

    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ", durationUs="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    iget-object v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v9, v6, v4

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    iget-object v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v6, v6

    sub-int/2addr v6, v8

    if-ge v4, v6, :cond_5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    sub-int/2addr v3, v8

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
