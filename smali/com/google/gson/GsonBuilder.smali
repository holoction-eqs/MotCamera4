.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dateStyle:I

.field public final escapeHtmlChars:Z

.field public final excluder:Lcom/google/gson/internal/Excluder;

.field public final factories:Ljava/util/ArrayList;

.field public final fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy$1;

.field public final hierarchyFactories:Ljava/util/ArrayList;

.field public final instanceCreators:Ljava/util/HashMap;

.field public final longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy$1;

.field public final numberToNumberStrategy:Lcom/google/gson/ToNumberPolicy$2;

.field public final objectToNumberStrategy:Lcom/google/gson/ToNumberPolicy$1;

.field public prettyPrinting:Z

.field public final reflectionFilters:Ljava/util/LinkedList;

.field public final timeStyle:I

.field public final useJdkUnsafe:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy$1;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy$1;

    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy$1;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy$1;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    iput v0, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->useJdkUnsafe:Z

    sget-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberPolicy$1;

    sget-object v0, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy$2;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberPolicy$2;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final create()Lcom/google/gson/Gson;
    .locals 17

    move-object/from16 v0, p0

    new-instance v10, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v2, Lcom/google/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    sget-object v4, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType$1;

    iget v5, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget v7, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    if-eq v7, v6, :cond_1

    invoke-virtual {v4, v5, v7}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v4

    if-eqz v2, :cond_0

    sget-object v6, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    invoke-virtual {v6, v5, v7}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v6

    sget-object v8, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    invoke-virtual {v8, v5, v7}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v5, v6

    :goto_0
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v14, Lcom/google/gson/Gson;

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy$1;

    new-instance v5, Ljava/util/HashMap;

    iget-object v6, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/HashMap;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-boolean v6, v0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v7, v0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v8, v0, Lcom/google/gson/GsonBuilder;->useJdkUnsafe:Z

    iget-object v9, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy$1;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v13, v0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberPolicy$1;

    iget-object v15, v0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberPolicy$2;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/util/LinkedList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v14

    move-object v1, v2

    move-object v2, v4

    move-object/from16 v16, v3

    move-object v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v11

    move-object v9, v12

    move-object v11, v13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingPolicy$1;Ljava/util/HashMap;ZZZLcom/google/gson/LongSerializationPolicy$1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/gson/ToNumberPolicy$1;Lcom/google/gson/ToNumberPolicy$2;Ljava/util/ArrayList;)V

    return-object v14
.end method
