.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;->f$1:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;->f$1:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v1, "$screenConfig"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const-string v2, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->completeTutorial(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    return-void

    :goto_0
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->completeTutorial(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
