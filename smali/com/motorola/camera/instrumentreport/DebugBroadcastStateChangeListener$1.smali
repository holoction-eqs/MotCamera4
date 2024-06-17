.class public final Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;->this$0:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;->this$0:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    iget p0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-object v0

    :goto_2
    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
