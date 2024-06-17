.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final deserialized:Z

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldName:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final serialized:Z

.field public final synthetic val$accessor:Ljava/lang/reflect/Method;

.field public final synthetic val$blockInaccessible:Z

.field public final synthetic val$context:Lcom/google/gson/Gson;

.field public final synthetic val$fieldType:Lcom/google/gson/reflect/TypeToken;

.field public final synthetic val$isPrimitive:Z

.field public final synthetic val$isStaticFinalField:Z

.field public final synthetic val$jsonAdapterPresent:Z

.field public final synthetic val$typeAdapter:Lcom/google/gson/TypeAdapter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZZZLjava/lang/reflect/Method;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;ZZ)V
    .locals 0

    iput-boolean p5, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$blockInaccessible:Z

    iput-object p6, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$accessor:Ljava/lang/reflect/Method;

    iput-boolean p7, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonAdapterPresent:Z

    iput-object p8, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    iput-object p9, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/google/gson/Gson;

    iput-object p10, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/google/gson/reflect/TypeToken;

    iput-boolean p11, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    iput-boolean p12, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isStaticFinalField:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->fieldName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->serialized:Z

    iput-boolean p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->deserialized:Z

    return-void
.end method


# virtual methods
.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->serialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$blockInaccessible:Z

    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->field:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$accessor:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    invoke-static {p2, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->access$000(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_0

    :cond_1
    invoke-static {p2, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->access$000(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {v2, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/gson/JsonIOException;

    const-string v0, "Accessor "

    const-string v1, " threw exception"

    invoke-static {v0, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-ne v0, p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonAdapterPresent:Z

    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p2, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/google/gson/reflect/TypeToken;

    iget-object v2, v2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/google/gson/Gson;

    invoke-direct {p2, p0, v1, v2}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    move-object v1, p2

    :goto_2
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
