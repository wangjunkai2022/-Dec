.class public Lcom/apk/u7$do;
.super Ljava/lang/Object;
.source "ImportFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/u7;->new(Lcom/lxj/xpopup/core/BasePopupView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/apk/u7;


# direct methods
.method public constructor <init>(Lcom/apk/u7;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u7$do;->if:Lcom/apk/u7;

    iput-object p2, p0, Lcom/apk/u7$do;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/u7$do;->if:Lcom/apk/u7;

    iget-object p1, p1, Lcom/apk/u7;->do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    iget-object v0, p0, Lcom/apk/u7$do;->do:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1, v0}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
