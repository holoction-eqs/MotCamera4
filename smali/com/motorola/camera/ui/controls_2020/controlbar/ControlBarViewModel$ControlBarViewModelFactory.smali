.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final eventHandler:Lcom/motorola/camera/EventListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventHandler"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;->eventHandler:Lcom/motorola/camera/EventListener;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;-><init>(Lcom/motorola/camera/EventListener;)V

    return-object p1
.end method
