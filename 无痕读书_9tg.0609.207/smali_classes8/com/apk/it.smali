.class public Lcom/apk/it;
.super Ljava/lang/Object;
.source "PopBase.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic do:Lcom/apk/lt;


# direct methods
.method public constructor <init>(Lcom/apk/lt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/it;->do:Lcom/apk/lt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/it;->do:Lcom/apk/lt;

    .line 2
    iget-boolean v1, v0, Lcom/apk/lt;->for:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/lt;->do(F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/it;->do:Lcom/apk/lt;

    .line 5
    iget-object v0, v0, Lcom/apk/lt;->try:Lcom/apk/lt$do;

    if-eqz v0, :cond_1

    .line 6
    check-cast v0, Lcom/apk/nt;

    .line 7
    iget-object v0, v0, Lcom/apk/nt;->if:Lcom/apk/nt$do;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/apk/nt$do;->onDismiss()V

    :cond_1
    return-void
.end method
