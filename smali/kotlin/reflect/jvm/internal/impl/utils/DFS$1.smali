.class public final Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$predicate:Ljava/lang/Object;

.field public final synthetic val$result:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$predicate:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$result:Ljava/io/Serializable;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$result:Ljava/io/Serializable;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$predicate:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterChildren(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$result:Ljava/io/Serializable;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$predicate:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeChildren(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->$r8$classId:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$predicate:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$result:Ljava/io/Serializable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    const-string v0, "javaClassDescriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlinx/coroutines/DelayKt;->signature(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$JDKMemberStatus;->HIDDEN:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$JDKMemberStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$JDKMemberStatus;->VISIBLE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$JDKMemberStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$JDKMemberStatus;->DROP:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$JDKMemberStatus;

    :goto_0
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_2
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :pswitch_1
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    move-object p1, p0

    check-cast p1, [Z

    aput-boolean v3, p1, v2

    :cond_4
    check-cast p0, [Z

    aget-boolean p0, p0, v2

    xor-int/2addr p0, v3

    return p0

    :goto_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_5

    move v2, v3

    :cond_5
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final result()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->$r8$classId:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$result:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$JDKMemberStatus;

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$JDKMemberStatus;->NOT_CONSIDERED:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$JDKMemberStatus;

    :cond_0
    return-object p0

    :pswitch_1
    check-cast p0, [Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
