.class public abstract Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mInner:Landroid/view/ActionProvider;

.field public final synthetic this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/view/ActionProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public bridge abstract synthetic isVisible()Z
.end method

.method public abstract onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
.end method

.method public bridge abstract synthetic overridesItemVisibility()Z
.end method

.method public abstract setVisibilityListener(Lcom/google/common/base/Splitter$1;)V
.end method
