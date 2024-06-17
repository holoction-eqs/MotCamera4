.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzps;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzps;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzps;->$r8$classId:I

    const-string v1, "proto"

    const-string v2, "json"

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzps;->zza:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/core/view/MenuHostHelper;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/mlkit/common/internal/zzh;->zza$1:Lcom/google/mlkit/common/internal/zzh;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/MenuHostHelper;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/TransportImpl;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/core/view/MenuHostHelper;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v0, v2}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/mlkit/common/internal/zze;->zza$1:Lcom/google/mlkit/common/internal/zze;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/MenuHostHelper;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/TransportImpl;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/core/view/MenuHostHelper;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/mlkit/common/internal/zzf;->zza$1:Lcom/google/mlkit/common/internal/zzf;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/MenuHostHelper;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/TransportImpl;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/core/view/MenuHostHelper;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v0, v2}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/parser/PathParser;->zza:Lcom/airbnb/lottie/parser/PathParser;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/MenuHostHelper;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/TransportImpl;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/core/view/MenuHostHelper;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkotlin/UNINITIALIZED_VALUE;->zza$1:Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/MenuHostHelper;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/TransportImpl;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/core/view/MenuHostHelper;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v0, v2}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/mlkit/common/internal/zzd;->zza$1:Lcom/google/mlkit/common/internal/zzd;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/MenuHostHelper;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/TransportImpl;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p0, Ljava/lang/String;

    const-string v0, "Could not instantiate %s"

    const-string v1, "Could not instantiate %s."

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/firebase/components/ComponentRegistrar;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/ComponentRegistrar;

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/firebase/components/InvalidRegistrarException;

    const-string v3, "Class %s is not an instance of %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    const-string v4, "com.google.firebase.components.ComponentRegistrar"

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/google/firebase/components/InvalidRegistrarException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/ReflectiveOperationException;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/google/firebase/components/InvalidRegistrarException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/ReflectiveOperationException;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Lcom/google/firebase/components/InvalidRegistrarException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/ReflectiveOperationException;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v2, Lcom/google/firebase/components/InvalidRegistrarException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/ReflectiveOperationException;)V

    throw v2

    :catch_4
    const-string v0, "Class %s is not an found."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ComponentDiscovery"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
