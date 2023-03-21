.class public Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do$do;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;->if(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do$do;->for:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do$do;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do$do;->if:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do$do;->if:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/apk/v0;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EVENT_COMPLE_USERINFO_KEY"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do$do;->for:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->finish()V

    return-void
.end method
