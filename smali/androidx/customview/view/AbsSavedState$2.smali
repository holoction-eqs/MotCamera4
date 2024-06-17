.class public final Landroidx/customview/view/AbsSavedState$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/customview/view/AbsSavedState$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Landroidx/customview/view/AbsSavedState$2;->$r8$classId:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 2
    :pswitch_1
    new-instance p0, Lcom/google/android/material/internal/CheckableImageButton$SavedState;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/CheckableImageButton$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 3
    :pswitch_2
    new-instance p0, Lcom/google/android/material/button/MaterialButton$SavedState;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 4
    :pswitch_3
    new-instance p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 5
    :pswitch_4
    new-instance p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 6
    :pswitch_5
    new-instance p0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 7
    :pswitch_6
    new-instance p0, Landroidx/viewpager/widget/ViewPager$SavedState;

    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 8
    :pswitch_7
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 9
    :pswitch_8
    new-instance p0, Landroidx/fragment/app/Fragment$SavedState;

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 10
    :pswitch_9
    new-instance p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 11
    :pswitch_a
    new-instance p0, Landroidx/appcompat/widget/Toolbar$SavedState;

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 12
    :pswitch_b
    new-instance p0, Landroidx/appcompat/widget/SearchView$SavedState;

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 13
    :pswitch_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 14
    sget-object p0, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState$1;

    return-object p0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "superState must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :goto_0
    new-instance p0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/customview/view/AbsSavedState$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 17
    :pswitch_0
    new-instance p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 18
    :pswitch_1
    new-instance p0, Lcom/google/android/material/internal/CheckableImageButton$SavedState;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/CheckableImageButton$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 19
    :pswitch_2
    new-instance p0, Lcom/google/android/material/button/MaterialButton$SavedState;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 20
    :pswitch_3
    new-instance p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 21
    :pswitch_4
    new-instance p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 22
    :pswitch_5
    new-instance p0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 23
    :pswitch_6
    new-instance p0, Landroidx/viewpager/widget/ViewPager$SavedState;

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 24
    :pswitch_7
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 25
    :pswitch_8
    new-instance p0, Landroidx/fragment/app/Fragment$SavedState;

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 26
    :pswitch_9
    new-instance p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 27
    :pswitch_a
    new-instance p0, Landroidx/appcompat/widget/Toolbar$SavedState;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 28
    :pswitch_b
    new-instance p0, Landroidx/appcompat/widget/SearchView$SavedState;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 29
    :pswitch_c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 30
    sget-object p0, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState$1;

    return-object p0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "superState must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :goto_0
    new-instance p0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/customview/view/AbsSavedState$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/material/internal/CheckableImageButton$SavedState;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/material/button/MaterialButton$SavedState;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Landroidx/viewpager2/widget/ViewPager2$SavedState;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Landroidx/viewpager/widget/ViewPager$SavedState;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Landroidx/recyclerview/widget/RecyclerView$SavedState;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Landroidx/fragment/app/Fragment$SavedState;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Landroidx/appcompat/widget/Toolbar$SavedState;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Landroidx/appcompat/widget/SearchView$SavedState;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Landroidx/customview/view/AbsSavedState;

    return-object p0

    :goto_0
    new-array p0, p1, [Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
