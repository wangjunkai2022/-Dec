.class public Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$for;
.super Ljava/lang/Object;
.source "SetNickNameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$for;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$for;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    invoke-static {v0}, Lcom/apk/ze;->L(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$for;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$for;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method
