.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;
.super Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ImplicitContextReceiver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final customLabelName:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public final declarationDescriptor:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->$r8$classId:I

    const-string v0, "receiverType"

    .line 1
    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->declarationDescriptor:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->customLabelName:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->$r8$classId:I

    const-string v0, "classDescriptor"

    .line 2
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverType"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->declarationDescriptor:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->customLabelName:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->declarationDescriptor:Ljava/lang/Object;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->$r8$classId:I

    const-string v2, " }"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Cxt { "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Ctx { "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
