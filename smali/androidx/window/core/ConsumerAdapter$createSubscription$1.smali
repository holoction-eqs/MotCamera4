.class public final Landroidx/window/core/ConsumerAdapter$createSubscription$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $javaConsumer:Ljava/lang/Object;

.field public final synthetic $obj:Ljava/lang/Object;

.field public final synthetic $removeMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$removeMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$obj:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$javaConsumer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$javaConsumer:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$removeMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$obj:Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
