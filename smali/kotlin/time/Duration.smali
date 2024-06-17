.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final INFINITE:J

.field public static final NEG_INFINITE:J


# instance fields
.field public final rawValue:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Duration;->rawValue:J

    return-void
.end method

.method public static final addValuesMixedRanges-UwyO8pc(JJ)J
    .locals 9

    const v0, 0xf4240

    int-to-long v0, v0

    div-long v2, p2, v0

    add-long/2addr p0, v2

    new-instance v4, Lkotlin/ranges/LongRange;

    const-wide v5, -0x431bde82d7aL

    const-wide v7, 0x431bde82d7aL

    invoke-direct {v4, v5, v6, v7, v8}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v4, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_0

    mul-long/2addr v2, v0

    sub-long/2addr p2, v2

    mul-long/2addr p0, v0

    add-long/2addr p0, p2

    const/4 p2, 0x1

    shl-long/2addr p0, p2

    sget p2, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/TuplesKt;->coerceIn(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_8

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p3, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr p3, v4

    invoke-direct {v3, v1, p3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object p3

    :goto_0
    iget-boolean v3, p3, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, -0x1

    add-int/2addr p2, p3

    if-ltz p2, :cond_5

    :goto_2
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    move v4, v2

    :goto_3
    if-eqz v4, :cond_3

    move p3, p2

    goto :goto_4

    :cond_3
    if-gez v3, :cond_4

    goto :goto_4

    :cond_4
    move p2, v3

    goto :goto_2

    :cond_5
    :goto_4
    add-int/2addr p3, v1

    const/4 p2, 0x3

    if-nez p5, :cond_6

    if-ge p3, p2, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 p3, p3, 0x2

    div-int/2addr p3, p2

    mul-int/2addr p3, p2

    :goto_5
    invoke-virtual {p0, p1, v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Desired length "

    const-string p2, " is less than zero."

    invoke-static {p1, p3, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_6
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final getNanosecondsComponent-impl(J)I
    .locals 3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    long-to-int v0, p0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    shr-long/2addr p0, v2

    if-eqz v1, :cond_2

    const/16 v0, 0x3e8

    int-to-long v0, v0

    rem-long/2addr p0, v0

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    goto :goto_0

    :cond_2
    const v0, 0x3b9aca00

    int-to-long v0, v0

    rem-long/2addr p0, v0

    :goto_0
    long-to-int v1, p0

    :goto_1
    return v1
.end method

.method public static final isInfinite-impl(J)Z
    .locals 2

    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final plus-LRDsOJo(JJ)J
    .locals 6

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    xor-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-wide p0

    :cond_2
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide p2

    :cond_3
    long-to-int v0, p0

    and-int/2addr v0, v1

    long-to-int v2, p2

    and-int/2addr v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_7

    shr-long/2addr p0, v1

    shr-long/2addr p2, v1

    add-long/2addr p0, p2

    if-nez v0, :cond_4

    move v3, v1

    :cond_4
    if-eqz v3, :cond_6

    new-instance p2, Lkotlin/ranges/LongRange;

    const-wide v2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    const-wide v4, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-direct {p2, v2, v3, v4, v5}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {p2, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result p2

    if-eqz p2, :cond_5

    shl-long/2addr p0, v1

    sget p2, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    goto :goto_1

    :cond_5
    const p2, 0xf4240

    int-to-long p2, p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    goto :goto_1

    :cond_6
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    goto :goto_1

    :cond_7
    if-ne v0, v1, :cond_8

    move v3, v1

    :cond_8
    if-eqz v3, :cond_9

    shr-long/2addr p0, v1

    shr-long/2addr p2, v1

    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJ)J

    move-result-wide p0

    goto :goto_1

    :cond_9
    shr-long/2addr p2, v1

    shr-long/2addr p0, v1

    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJ)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public static final toLong-impl(JLkotlin/time/DurationUnit;)J
    .locals 3

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    goto :goto_2

    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    shr-long v1, p0, v0

    long-to-int p0, p0

    and-int/2addr p0, v0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    goto :goto_1

    :cond_3
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    :goto_1
    const-string p1, "sourceUnit"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p2, Lkotlin/time/DurationUnit;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lkotlin/time/DurationUnit;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    :goto_2
    return-wide p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 9

    check-cast p1, Lkotlin/time/Duration;

    iget-wide v0, p1, Lkotlin/time/Duration;->rawValue:J

    iget-wide p0, p0, Lkotlin/time/Duration;->rawValue:J

    xor-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ltz v6, :cond_2

    long-to-int v2, v2

    and-int/2addr v2, v8

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v2, p0

    and-int/2addr v2, v8

    long-to-int v0, v0

    and-int/2addr v0, v8

    sub-int/2addr v2, v0

    cmp-long p0, p0, v4

    if-gez p0, :cond_1

    move v7, v8

    :cond_1
    if-eqz v7, :cond_5

    neg-int v2, v2

    goto :goto_2

    :cond_2
    :goto_0
    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    const/4 v7, -0x1

    goto :goto_1

    :cond_3
    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    :goto_1
    move v2, v7

    :cond_5
    :goto_2
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lkotlin/time/Duration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/time/Duration;

    iget-wide v2, p1, Lkotlin/time/Duration;->rawValue:J

    iget-wide p0, p0, Lkotlin/time/Duration;->rawValue:J

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    move-object v0, p0

    iget-wide v0, v0, Lkotlin/time/Duration;->rawValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "0s"

    goto/16 :goto_f

    :cond_0
    sget-wide v5, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    const-string v0, "Infinity"

    goto/16 :goto_f

    :cond_1
    sget-wide v5, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    const-string v0, "-Infinity"

    goto/16 :goto_f

    :cond_2
    const/4 v6, 0x1

    if-gez v4, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_4

    const/16 v8, 0x2d

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-gez v4, :cond_5

    move v4, v6

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    shr-long v8, v0, v6

    neg-long v8, v8

    long-to-int v0, v0

    and-int/2addr v0, v6

    shl-long/2addr v8, v6

    int-to-long v0, v0

    add-long/2addr v0, v8

    sget v4, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    :cond_6
    sget-object v4, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v4}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v8

    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    sget-object v4, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v4}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v10

    const/16 v4, 0x18

    int-to-long v12, v4

    rem-long/2addr v10, v12

    long-to-int v4, v10

    :goto_2
    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v10

    const/16 v11, 0x3c

    if-eqz v10, :cond_8

    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    sget-object v10, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v10}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    int-to-long v5, v11

    rem-long/2addr v12, v5

    long-to-int v5, v12

    :goto_3
    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    sget-object v6, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v6}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    int-to-long v10, v11

    rem-long/2addr v12, v10

    long-to-int v6, v12

    :goto_4
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v0

    cmp-long v1, v8, v2

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    if-eqz v4, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-eqz v5, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :goto_7
    if-nez v6, :cond_e

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v10, 0x1

    :goto_9
    if-eqz v1, :cond_f

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v8, 0x64

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    goto :goto_a

    :cond_f
    const/4 v8, 0x0

    :goto_a
    const/16 v9, 0x20

    if-nez v2, :cond_10

    if-eqz v1, :cond_12

    if-nez v3, :cond_10

    if-eqz v10, :cond_12

    :cond_10
    add-int/lit8 v11, v8, 0x1

    if-lez v8, :cond_11

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x68

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v11

    :cond_12
    if-nez v3, :cond_13

    if-eqz v10, :cond_15

    if-nez v2, :cond_13

    if-eqz v1, :cond_15

    :cond_13
    add-int/lit8 v4, v8, 0x1

    if-lez v8, :cond_14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x6d

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v4

    :cond_15
    if-eqz v10, :cond_1b

    add-int/lit8 v4, v8, 0x1

    if-lez v8, :cond_16

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    if-nez v6, :cond_1a

    if-nez v1, :cond_1a

    if-nez v2, :cond_1a

    if-eqz v3, :cond_17

    goto :goto_c

    :cond_17
    const v1, 0xf4240

    if-lt v0, v1, :cond_18

    div-int v2, v0, v1

    rem-int/2addr v0, v1

    const/4 v1, 0x6

    const-string v3, "ms"

    goto :goto_b

    :cond_18
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_19

    div-int/lit16 v2, v0, 0x3e8

    rem-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x3

    const-string v3, "us"

    :goto_b
    move v10, v0

    move v11, v1

    move v9, v2

    move-object v12, v3

    goto :goto_d

    :cond_19
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ns"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1a
    :goto_c
    const/16 v1, 0x9

    const-string v2, "s"

    move v10, v0

    move v11, v1

    move-object v12, v2

    move v9, v6

    :goto_d
    const/4 v13, 0x0

    move-object v8, v14

    invoke-static/range {v8 .. v13}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :goto_e
    move v8, v4

    :cond_1b
    if-eqz v7, :cond_1c

    const/4 v0, 0x1

    if-le v8, v0, :cond_1c

    const/16 v1, 0x28

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_f
    return-object v0
.end method
