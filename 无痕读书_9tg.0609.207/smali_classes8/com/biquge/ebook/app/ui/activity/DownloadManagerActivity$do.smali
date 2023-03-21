.class public Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity$do;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/hf;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method
