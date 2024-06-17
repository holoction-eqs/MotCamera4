.class public final Landroidx/viewpager/widget/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->$r8$classId:I

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->$r8$classId:I

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/cursoradapter/widget/CursorAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_0
    return-void

    :pswitch_2
    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    return-void

    :goto_0
    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onInvalidated()V
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->$r8$classId:I

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/cursoradapter/widget/CursorAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    return-void

    :goto_0
    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
