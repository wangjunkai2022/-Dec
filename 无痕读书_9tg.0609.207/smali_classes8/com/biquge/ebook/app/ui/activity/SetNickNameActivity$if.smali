.class public Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$if;
.super Ljava/lang/Object;
.source "SetNickNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const p1, 0x7f1002ed

    .line 1
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void
.end method
