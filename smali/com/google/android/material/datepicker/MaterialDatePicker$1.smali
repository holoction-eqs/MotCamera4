.class public final Lcom/google/android/material/datepicker/MaterialDatePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()V

    const/4 p0, 0x0

    throw p0
.end method
