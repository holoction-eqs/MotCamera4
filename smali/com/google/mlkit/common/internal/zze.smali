.class public final synthetic Lcom/google/mlkit/common/internal/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;
.implements Lcom/google/android/datatransport/Transformer;
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final INSTANCE:Lcom/google/mlkit/common/internal/zze;

.field public static final synthetic zza:Lcom/google/mlkit/common/internal/zze;

.field public static final synthetic zza$1:Lcom/google/mlkit/common/internal/zze;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zze;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zze;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zze;->INSTANCE:Lcom/google/mlkit/common/internal/zze;

    new-instance v0, Lcom/google/mlkit/common/internal/zze;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zze;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zze;->zza$1:Lcom/google/mlkit/common/internal/zze;

    new-instance v0, Lcom/google/mlkit/common/internal/zze;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zze;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zze;->zza:Lcom/google/mlkit/common/internal/zze;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    return-object p1
.end method

.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 3

    new-instance p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/Cleaner;-><init>()V

    new-instance p1, Lcom/google/mlkit/common/sdkinternal/zzd;

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zza:Ljava/lang/ref/ReferenceQueue;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/mlkit/common/sdkinternal/zzd;-><init>(Lcom/google/mlkit/common/sdkinternal/Cleaner;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/work/Worker$2;

    const/16 v2, 0x14

    invoke-direct {p1, v0, v1, v2}, Landroidx/work/Worker$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MlKitCleaner"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek$enumunboxing$()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    :cond_3
    new-instance p1, Lcom/airbnb/lottie/value/ScaleXY;

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    mul-float/2addr p0, p2

    div-float/2addr v1, v0

    mul-float/2addr v1, p2

    invoke-direct {p1, p0, v1}, Lcom/airbnb/lottie/value/ScaleXY;-><init>(FF)V

    return-object p1
.end method
