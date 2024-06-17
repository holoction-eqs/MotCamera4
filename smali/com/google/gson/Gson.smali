.class public final Lcom/google/gson/Gson;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final builderFactories:Ljava/util/List;

.field public final builderHierarchyFactories:Ljava/util/List;

.field public final constructorConstructor:Lcom/google/android/gms/tasks/zzr;

.field public final factories:Ljava/util/List;

.field public final generateNonExecutableJson:Z

.field public final htmlSafe:Z

.field public final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public final lenient:Z

.field public final prettyPrinting:Z

.field public final reflectionFilters:Ljava/util/List;

.field public final serializeNulls:Z

.field public final threadLocalAdapterResults:Ljava/lang/ThreadLocal;

.field public final typeTokenCache:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingPolicy$1;Ljava/util/HashMap;ZZZLcom/google/gson/LongSerializationPolicy$1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/gson/ToNumberPolicy$1;Lcom/google/gson/ToNumberPolicy$2;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/gson/Gson;->threadLocalAdapterResults:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/Gson;->typeTokenCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/tasks/zzr;

    invoke-direct {v0, p13, p3, p6}, Lcom/google/android/gms/tasks/zzr;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    iput-object v0, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/android/gms/tasks/zzr;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    iput-boolean p3, p0, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    iput-boolean p4, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    iput-boolean p5, p0, Lcom/google/gson/Gson;->prettyPrinting:Z

    iput-boolean p3, p0, Lcom/google/gson/Gson;->lenient:Z

    iput-object p8, p0, Lcom/google/gson/Gson;->builderFactories:Ljava/util/List;

    iput-object p9, p0, Lcom/google/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    iput-object p13, p0, Lcom/google/gson/Gson;->reflectionFilters:Ljava/util/List;

    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p11}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->getFactory(Lcom/google/gson/ToNumberPolicy$1;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p3

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p9, p10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy$1;

    if-ne p7, p3, :cond_0

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/google/gson/TypeAdapter;

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/google/gson/Gson$3;

    invoke-direct {p3}, Lcom/google/gson/Gson$3;-><init>()V

    :goto_0
    sget-object p4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p5, Ljava/lang/Long;

    invoke-static {p4, p5, p3}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-virtual {p9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance p5, Lcom/google/gson/Gson$1;

    invoke-direct {p5}, Lcom/google/gson/Gson$1;-><init>()V

    const-class p6, Ljava/lang/Double;

    invoke-static {p4, p6, p5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-virtual {p9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance p5, Lcom/google/gson/Gson$2;

    invoke-direct {p5}, Lcom/google/gson/Gson$2;-><init>()V

    const-class p6, Ljava/lang/Float;

    invoke-static {p4, p6, p5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-virtual {p9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy$2;

    if-ne p12, p4, :cond_1

    sget-object p4, Lcom/google/gson/internal/bind/NumberTypeAdapter;->LAZILY_PARSED_NUMBER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    goto :goto_1

    :cond_1
    invoke-static {p12}, Lcom/google/gson/internal/bind/NumberTypeAdapter;->newFactory(Lcom/google/gson/ToNumberPolicy$2;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p4

    :goto_1
    invoke-virtual {p9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/gson/Gson$4;

    invoke-direct {p4, p3}, Lcom/google/gson/Gson$4;-><init>(Lcom/google/gson/TypeAdapter;)V

    new-instance p5, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {p5, p4}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    const-class p4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p4, p5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-virtual {p9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/gson/Gson$5;

    invoke-direct {p4, p3}, Lcom/google/gson/Gson$5;-><init>(Lcom/google/gson/TypeAdapter;)V

    new-instance p3, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {p3, p4}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    const-class p4, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p4, p3}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p3

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/google/gson/TypeAdapter;

    const-class p4, Ljava/math/BigDecimal;

    invoke-static {p4, p3}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p3

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/google/gson/TypeAdapter;

    const-class p4, Ljava/math/BigInteger;

    invoke-static {p4, p3}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p3

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->LAZILY_PARSED_NUMBER:Lcom/google/gson/TypeAdapter;

    const-class p4, Lcom/google/gson/internal/LazilyParsedNumber;

    invoke-static {p4, p3}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p3

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p3, Lcom/google/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    if-eqz p3, :cond_2

    sget-object p3, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIME_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object p3, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;

    invoke-direct {p3, v0}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/google/android/gms/tasks/zzr;)V

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p3, v0}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/google/android/gms/tasks/zzr;)V

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p7, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {p7, v0}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/google/android/gms/tasks/zzr;)V

    iput-object p7, p0, Lcom/google/gson/Gson;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-virtual {p9, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p10, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    move-object p3, p10

    move-object p4, v0

    move-object p5, p2

    move-object p6, p1

    move-object p8, p13

    invoke-direct/range {p3 .. p8}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/google/android/gms/tasks/zzr;Lcom/google/gson/FieldNamingPolicy$1;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/ArrayList;)V

    invoke-virtual {p9, p10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    return-void
.end method

.method public static checkValidFloatingPoint(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 3

    const-string v0, "AssertionError (GSON 2.10.1): "

    .line 1
    iget-boolean v1, p1, Lcom/google/gson/stream/JsonReader;->lenient:Z

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, p1, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v1, p1, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p2, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance p2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p2, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p0

    if-eqz v2, :cond_0

    .line 6
    iput-boolean v1, p1, Lcom/google/gson/stream/JsonReader;->lenient:Z

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    :try_start_2
    new-instance p2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p2, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :goto_0
    iput-boolean v1, p1, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 9
    throw p0
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 10
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    const-class v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v0, v1}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/google/gson/stream/JsonReader;

    invoke-direct {p1, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/StringReader;)V

    .line 13
    iget-boolean v2, p0, Lcom/google/gson/Gson;->lenient:Z

    iput-boolean v2, p1, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/gson/JsonSyntaxException;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p1, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 16
    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_3

    const-class v1, Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_4

    const-class v1, Ljava/lang/Float;

    goto :goto_1

    :cond_4
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_5

    const-class v1, Ljava/lang/Byte;

    goto :goto_1

    :cond_5
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_6

    const-class v1, Ljava/lang/Double;

    goto :goto_1

    :cond_6
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_7

    const-class v1, Ljava/lang/Long;

    goto :goto_1

    :cond_7
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_8

    const-class v1, Ljava/lang/Character;

    goto :goto_1

    :cond_8
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_9

    const-class v1, Ljava/lang/Boolean;

    goto :goto_1

    :cond_9
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_a

    const-class v1, Ljava/lang/Short;

    goto :goto_1

    :cond_a
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_b

    const-class v1, Ljava/lang/Void;

    .line 17
    :cond_b
    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 8

    iget-object v0, p0, Lcom/google/gson/Gson;->typeTokenCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/TypeAdapter;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/gson/Gson;->threadLocalAdapterResults:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/TypeAdapter;

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-instance v4, Lcom/google/gson/Gson$FutureTypeAdapter;

    invoke-direct {v4}, Lcom/google/gson/Gson$FutureTypeAdapter;-><init>()V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v6, p0, p1}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object p0, v4, Lcom/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;

    if-nez p0, :cond_4

    iput-object v6, v4, Lcom/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;

    invoke-interface {v2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Delegate is already set"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    if-eqz v6, :cond_8

    if-eqz v3, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    return-object v6

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSON (2.10.1) cannot handle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_9
    throw p0
.end method

.method public final getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/google/gson/Gson;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/TypeAdapterFactory;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GSON cannot serialize "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lcom/google/gson/Gson;->prettyPrinting:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    iput-object p1, v0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    const-string p1, ": "

    iput-object p1, v0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    :cond_1
    iget-boolean p1, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    iput-boolean p1, v0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    iget-boolean p1, p0, Lcom/google/gson/Gson;->lenient:Z

    iput-boolean p1, v0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    iget-boolean p0, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    iput-boolean p0, v0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    return-object v0
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lcom/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Lcom/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final toJson(Lcom/google/gson/stream/JsonWriter;)V
    .locals 6

    .line 9
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    const-string v1, "AssertionError (GSON 2.10.1): "

    .line 10
    iget-boolean v2, p1, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    const/4 v3, 0x1

    .line 11
    iput-boolean v3, p1, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 12
    iget-boolean v3, p1, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 13
    iget-boolean v4, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    iput-boolean v4, p1, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 14
    iget-boolean v4, p1, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 15
    iget-boolean p0, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    iput-boolean p0, p1, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 16
    :try_start_0
    sget-object p0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iput-boolean v2, p1, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 18
    iput-boolean v3, p1, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 19
    iput-boolean v4, p1, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 20
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_2
    iput-boolean v2, p1, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 22
    iput-boolean v3, p1, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 23
    iput-boolean v4, p1, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 24
    throw p0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/stream/JsonWriter;)V
    .locals 4

    const-string v0, "AssertionError (GSON 2.10.1): "

    .line 25
    new-instance v1, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v1, p2}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p2

    .line 27
    iget-boolean v1, p3, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    const/4 v2, 0x1

    .line 28
    iput-boolean v2, p3, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 29
    iget-boolean v2, p3, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 30
    iget-boolean v3, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    iput-boolean v3, p3, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 31
    iget-boolean v3, p3, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 32
    iget-boolean p0, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    iput-boolean p0, p3, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 33
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iput-boolean v1, p3, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 35
    iput-boolean v2, p3, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 36
    iput-boolean v3, p3, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    return-void

    :catch_0
    move-exception p0

    .line 37
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Exception;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 38
    iput-boolean v1, p3, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 39
    iput-boolean v2, p3, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 40
    iput-boolean v3, p3, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 41
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
