.class public Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$do;
.super Ljava/lang/Object;
.source "WebHistoryActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->onItemMenuSelected(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$do;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    const-class v0, Lcom/biquge/ebook/app/bean/TxtCollect;

    const-string v1, "type = ?"

    const-string v2, "SP_WEBVIEW_WEBSITE_HISTORY_KEY"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$do;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->i(Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;)V

    return-void
.end method
