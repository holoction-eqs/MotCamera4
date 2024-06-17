.class public final Lkotlinx/serialization/internal/DurationSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/DurationSerializer;

.field public static final descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/DurationSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/DurationSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/DurationSerializer;->INSTANCE:Lkotlinx/serialization/internal/DurationSerializer;

    new-instance v0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    sget-object v1, Lkotlinx/serialization/descriptors/PrimitiveKind$INT;->INSTANCE$8:Lkotlinx/serialization/descriptors/PrimitiveKind$INT;

    const-string v2, "kotlin.time.Duration"

    invoke-direct {v0, v2, v1}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)V

    sput-object v0, Lkotlinx/serialization/internal/DurationSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 3

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lkotlin/time/Duration;->$r8$clinit:I

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "value"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lkotlin/time/DurationKt;->access$parseDuration(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lkotlin/time/Duration;

    invoke-direct {v0, p0, p1}, Lkotlin/time/Duration;-><init>(J)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ISO duration string format: \'"

    const-string v2, "\'."

    invoke-static {v1, p0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/DurationSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    check-cast v1, Lkotlin/time/Duration;

    iget-wide v1, v1, Lkotlin/time/Duration;->rawValue:J

    const-string v3, "encoder"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lkotlin/time/Duration;->$r8$clinit:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    const/4 v7, 0x1

    if-gez v6, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_1

    const/16 v9, 0x2d

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v9, "PT"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    shr-long v9, v1, v7

    neg-long v9, v9

    long-to-int v6, v1

    and-int/2addr v6, v7

    shl-long/2addr v9, v7

    int-to-long v11, v6

    add-long/2addr v11, v9

    sget v6, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    goto :goto_2

    :cond_3
    move-wide v11, v1

    :goto_2
    sget-object v6, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, v6}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    invoke-static {v11, v12}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v6

    const/16 v13, 0x3c

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    sget-object v6, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, v6}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v14

    int-to-long v7, v13

    rem-long/2addr v14, v7

    long-to-int v6, v14

    :goto_3
    invoke-static {v11, v12}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    sget-object v7, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, v7}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v7

    int-to-long v13, v13

    rem-long/2addr v7, v13

    long-to-int v7, v7

    :goto_4
    invoke-static {v11, v12}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v8

    invoke-static {v1, v2}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide v9, 0x9184e729fffL

    :cond_6
    cmp-long v1, v9, v4

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    if-nez v7, :cond_9

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v2, 0x1

    :goto_7
    if-nez v6, :cond_b

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v4, 0x1

    :goto_9
    if-eqz v1, :cond_c

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x48

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x4d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    if-nez v2, :cond_e

    if-nez v1, :cond_f

    if-nez v4, :cond_f

    :cond_e
    const/16 v1, 0x9

    const-string v2, "S"

    const/4 v9, 0x1

    move-object v4, v3

    move v5, v7

    move v6, v8

    move v7, v1

    move-object v8, v2

    invoke-static/range {v4 .. v9}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method
