.class final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;
.super Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldReflectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final constructor:Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Ljava/util/LinkedHashMap;)V

    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    return-void
.end method


# virtual methods
.method public final createAccumulator()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    invoke-interface {p0}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final finalize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final readField(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V
    .locals 1

    iget-object p0, p3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p0, p2}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    iget-boolean p2, p3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez p2, :cond_2

    :cond_0
    iget-boolean p2, p3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$blockInaccessible:Z

    iget-object v0, p3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->field:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_1

    invoke-static {p1, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->access$000(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_0

    :cond_1
    iget-boolean p2, p3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isStaticFinalField:Z

    if-nez p2, :cond_3

    :goto_0
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/gson/JsonIOException;

    const-string p2, "Cannot set value of \'static final\' "

    invoke-static {p2, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
