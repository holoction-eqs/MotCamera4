.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field public final constructorConstructor:Lcom/google/android/gms/tasks/zzr;

.field public final excluder:Lcom/google/gson/internal/Excluder;

.field public final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field public final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public final reflectionFilters:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzr;Lcom/google/gson/FieldNamingPolicy$1;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/android/gms/tasks/zzr;

    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iput-object p5, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    return-void
.end method

.method public static access$000(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->INSTANCE:Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->canAccess(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/gson/JsonIOException;

    const-string v0, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    invoke-static {p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 4

    iget-object v0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    invoke-static {v1}, Lkotlin/ExceptionsKt;->getFilterResult(Ljava/util/List;)V

    sget-object v1, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;->isRecord(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;-><init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/tasks/zzr;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v1

    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/LinkedHashMap;)V

    return-object v2
.end method

.method public final getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v15

    :cond_0
    move-object/from16 v13, p2

    move-object/from16 v12, p3

    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v12, v1, :cond_14

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    move-object/from16 v10, p3

    if-eq v12, v10, :cond_1

    array-length v1, v11

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    invoke-static {v1}, Lkotlin/ExceptionsKt;->getFilterResult(Ljava/util/List;)V

    :cond_1
    const/16 v16, 0x0

    array-length v9, v11

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-ge v8, v9, :cond_13

    aget-object v7, v11, v8

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->includeField(Ljava/lang/reflect/Field;Z)Z

    move-result v3

    invoke-virtual {v0, v7, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->includeField(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    move v2, v1

    move/from16 v34, v8

    move/from16 v25, v9

    move-object/from16 v26, v11

    move-object/from16 p2, v12

    move-object v0, v13

    move-object v1, v15

    goto/16 :goto_d

    :cond_2
    const-class v5, Lcom/google/gson/annotations/SerializedName;

    const/16 v17, 0x0

    if-eqz p4, :cond_6

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    sget-object v6, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;

    invoke-virtual {v6, v12, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;->getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v6}, Lcom/google/gson/internal/reflect/ReflectionHelper;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    if-eqz v18, :cond_5

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    if-eqz v18, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v6, v1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonIOException;

    const-string v2, "@SerializedName on "

    const-string v3, " is not supported"

    invoke-static {v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    move/from16 v18, v4

    move-object/from16 v19, v6

    goto :goto_4

    :cond_6
    move v1, v4

    :goto_3
    move/from16 v18, v1

    move-object/from16 v19, v17

    :goto_4
    if-nez v19, :cond_7

    invoke-static {v7}, Lcom/google/gson/internal/reflect/ReflectionHelper;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_7
    iget-object v1, v13, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v12, v4, v6}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/annotations/SerializedName;

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    invoke-interface {v1, v7}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :cond_8
    invoke-interface {v1}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-nez v5, :cond_9

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_5
    move-object v5, v1

    move/from16 p2, v3

    goto :goto_6

    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    move/from16 p2, v3

    array-length v3, v1

    add-int/2addr v3, v2

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v3, v1

    move-object/from16 v2, v17

    move/from16 v1, p2

    :goto_7
    if-ge v3, v4, :cond_11

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v15

    move-object/from16 v15, v20

    check-cast v15, Ljava/lang/String;

    if-eqz v3, :cond_a

    const/4 v1, 0x0

    :cond_a
    move/from16 v20, v1

    new-instance v1, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v1, v6}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    move-object/from16 p2, v2

    iget-object v2, v1, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    move/from16 v22, v3

    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    move/from16 v23, v2

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    move/from16 v24, v2

    const-class v2, Lcom/google/gson/annotations/JsonAdapter;

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/gson/annotations/JsonAdapter;

    if-eqz v2, :cond_d

    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/android/gms/tasks/zzr;

    invoke-static {v3, v14, v1, v2}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/android/gms/tasks/zzr;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    goto :goto_a

    :cond_d
    move-object/from16 v2, v17

    :goto_a
    if-eqz v2, :cond_e

    const/4 v3, 0x1

    goto :goto_b

    :cond_e
    const/4 v3, 0x0

    :goto_b
    move/from16 v25, v3

    if-nez v2, :cond_f

    invoke-virtual {v14, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    :cond_f
    move-object/from16 v26, v2

    new-instance v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object/from16 v27, v1

    move-object v1, v3

    move-object/from16 v28, p2

    move-object v2, v15

    move-object/from16 v29, v3

    move-object v3, v7

    move/from16 v30, v4

    move/from16 v4, v20

    move-object/from16 v31, v5

    move/from16 v5, v18

    move-object/from16 v32, v6

    move/from16 v6, v16

    move-object/from16 v33, v7

    move-object/from16 v7, v19

    move/from16 v34, v8

    move/from16 v8, v25

    move/from16 v25, v9

    move-object/from16 v9, v26

    move-object/from16 v10, p1

    move-object/from16 v26, v11

    move-object/from16 v11, v27

    move-object/from16 p2, v12

    move/from16 v12, v23

    move-object v0, v13

    move/from16 v13, v24

    invoke-direct/range {v1 .. v13}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZZZLjava/lang/reflect/Method;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;ZZ)V

    move-object/from16 v1, v21

    move-object/from16 v2, v29

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object/from16 v3, v28

    if-nez v3, :cond_10

    goto :goto_c

    :cond_10
    move-object v2, v3

    :goto_c
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v12, p2

    move-object/from16 v10, p3

    move-object v13, v0

    move-object v15, v1

    move/from16 v1, v20

    move/from16 v9, v25

    move-object/from16 v11, v26

    move/from16 v4, v30

    move-object/from16 v5, v31

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move/from16 v8, v34

    move-object/from16 v0, p0

    goto/16 :goto_7

    :cond_11
    move-object v3, v2

    move-object/from16 v33, v7

    move/from16 v34, v8

    move/from16 v25, v9

    move-object/from16 v26, v11

    move-object/from16 p2, v12

    move-object v0, v13

    move-object v1, v15

    const/4 v2, 0x0

    if-nez v3, :cond_12

    :goto_d
    add-int/lit8 v8, v34, 0x1

    move-object/from16 v12, p2

    move-object/from16 v10, p3

    move-object v13, v0

    move-object v15, v1

    move v1, v2

    move/from16 v9, v25

    move-object/from16 v11, v26

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'; conflict is caused by fields "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->field:Ljava/lang/reflect/Field;

    invoke-static {v2}, Lcom/google/gson/internal/reflect/ReflectionHelper;->fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v33 .. v33}, Lcom/google/gson/internal/reflect/ReflectionHelper;->fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object/from16 p2, v12

    move-object v0, v13

    move-object v1, v15

    iget-object v0, v0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, p2

    invoke-static {v0, v4, v2, v3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v13, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v13, v0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v12, v13, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_14
    move-object v1, v15

    return-object v1
.end method

.method public final includeField(Ljava/lang/reflect/Field;Z)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    iget v3, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-wide v3, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_2

    const-class v0, Lcom/google/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Since;

    const-class v3, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/google/gson/annotations/Until;

    invoke-virtual {p0, v0, v3}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_3
    move p0, v2

    goto :goto_6

    :cond_7
    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_4

    :cond_8
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_a
    :goto_5
    move p0, v1

    :goto_6
    if-nez p0, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method
