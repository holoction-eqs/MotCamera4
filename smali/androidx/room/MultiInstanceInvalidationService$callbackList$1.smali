.class public final Landroidx/room/MultiInstanceInvalidationService$callbackList$1;
.super Landroid/os/RemoteCallbackList;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$callbackList$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/room/IMultiInstanceInvalidationCallback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cookie"

    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService$callbackList$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->clientNames:Ljava/util/LinkedHashMap;

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
