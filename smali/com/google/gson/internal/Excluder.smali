.class public final Lcom/google/gson/internal/Excluder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/google/gson/internal/Excluder;


# instance fields
.field public final deserializationStrategies:Ljava/util/List;

.field public final modifiers:I

.field public final serializationStrategies:Ljava/util/List;

.field public final serializeInnerClasses:Z

.field public final version:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/internal/Excluder;

    invoke-direct {v0}, Lcom/google/gson/internal/Excluder;-><init>()V

    sput-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    return-void
.end method

.method public static isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z
    .locals 3

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/internal/Excluder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 9

    iget-object v0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Z)V

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Z)V

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-nez v6, :cond_2

    if-nez v5, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v0, Lcom/google/gson/internal/Excluder$1;

    move-object v3, v0

    move-object v4, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/gson/internal/Excluder$1;-><init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V

    return-object v0
.end method

.method public final excludeClassChecks(Ljava/lang/Class;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lcom/google/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Since;

    const-class v2, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/gson/annotations/Until;

    invoke-virtual {p0, v0, v2}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {p1}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public final excludeClassInStrategy(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z
    .locals 5

    iget-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    const/4 p0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/gson/annotations/Since;->value()D

    move-result-wide v3

    cmpl-double p1, v0, v3

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/google/gson/annotations/Until;->value()D

    move-result-wide p1

    cmpg-double p1, v0, p1

    if-gez p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, p0

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v2

    :goto_3
    if-eqz p1, :cond_4

    move p0, v2

    :cond_4
    return p0
.end method
