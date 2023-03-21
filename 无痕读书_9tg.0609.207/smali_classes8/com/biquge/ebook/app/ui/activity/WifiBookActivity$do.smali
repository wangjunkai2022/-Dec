.class public Lcom/biquge/ebook/app/ui/activity/WifiBookActivity$do;
.super Ljava/lang/Object;
.source "WifiBookActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->finish()V

    return-void
.end method
