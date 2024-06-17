.class public final Landroidx/appcompat/widget/SearchView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/widget/SearchView$9;->$r8$classId:I

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$9;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget p2, p0, Landroidx/appcompat/widget/SearchView$9;->$r8$classId:I

    const/4 p4, 0x0

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$9;->this$0:Ljava/lang/Object;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ltz p3, :cond_0

    check-cast p0, Landroidx/preference/DropDownPreference;

    iget-object p1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p1, p1, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/io/Serializable;)Z

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    const/4 p1, -0x1

    if-eq p3, p1, :cond_1

    check-cast p0, Landroidx/appcompat/widget/ListPopupWindow;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    :cond_1
    return-void

    :pswitch_2
    check-cast p0, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/SearchView;->onItemSelected(I)V

    return-void

    :goto_0
    const-string p2, "null cannot be cast to non-null type android.widget.Spinner"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Spinner;

    sget-object p2, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->factory$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UInt$Companion;->getFactory()Lcom/motorola/camera/scenedetection/factory/SceneFactory;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.motorola.camera.scenedetection.scene.Scene.Type"

    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    iget-object p3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupported(Z)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "mEventHandler"

    invoke-static {p0, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    sget-object p3, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p2, p3, :cond_4

    sget-object p2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/motorola/camera/scenedetection/scene/Scene;->getPersistOnLensSwitch()Z

    move-result p2

    if-ne p2, p3, :cond_3

    move p2, p3

    goto :goto_2

    :cond_3
    move p2, p4

    :goto_2
    if-eqz p2, :cond_4

    move p4, p3

    :cond_4
    sget-object p2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    if-eqz p4, :cond_5

    goto :goto_3

    :cond_5
    sput-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
