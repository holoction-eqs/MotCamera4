.class public final synthetic Lcom/google/mlkit/common/internal/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;
.implements Lcom/google/android/datatransport/Transformer;
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final INSTANCE:Lcom/google/mlkit/common/internal/zzf;

.field public static final synthetic zza:Lcom/google/mlkit/common/internal/zzf;

.field public static final synthetic zza$1:Lcom/google/mlkit/common/internal/zzf;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zzf;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzf;->INSTANCE:Lcom/google/mlkit/common/internal/zzf;

    new-instance v0, Lcom/google/mlkit/common/internal/zzf;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzf;->zza$1:Lcom/google/mlkit/common/internal/zzf;

    new-instance v0, Lcom/google/mlkit/common/internal/zzf;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzf;->zza:Lcom/google/mlkit/common/internal/zzf;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    return-object p1
.end method

.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/google/common/base/Splitter$1;

    const-class v0, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method

.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek$enumunboxing$()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_2

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p0, v0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    :cond_2
    :goto_2
    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$2(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Cannot convert json to point. Next token is "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
