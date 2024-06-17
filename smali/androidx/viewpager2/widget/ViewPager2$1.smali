.class public final Landroidx/viewpager2/widget/ViewPager2$1;
.super Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/viewpager2/widget/ViewPager2$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    return-void

    :goto_0
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
