.class public Lcom/android/systemui/statusbar/tablet/SettingsView;
.super Landroid/widget/LinearLayout;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BUTTONS_DEFAULT:Ljava/lang/String;

.field private static final KEY_TOGGLES:[Ljava/lang/String;

.field private static final TOGGLE_ID_ARRAY:[I

.field private static final mToggleCheckBoxes:[I

.field private static final mToggleIcons:[I

.field private static final mToggleIds:[I

.field private static final mToggleLabels:[I


# instance fields
.field mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

.field mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field private mContext:Landroid/content/Context;

.field mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

.field mFlashLight:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field mGps:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mHandler:Landroid/os/Handler;

.field mMobileData:Lcom/android/systemui/statusbar/policy/MobileDataController;

.field mNetworkMode:Lcom/android/systemui/statusbar/policy/NetworkModeController;

.field mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

.field mSound:Lcom/android/systemui/statusbar/policy/SoundController;

.field private mToggleContainer:Ljava/lang/String;

.field private mToggles:[Ljava/lang/String;

.field mWifi:Lcom/android/systemui/statusbar/policy/WifiController;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 54
    new-array v0, v3, [I

    sput-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->TOGGLE_ID_ARRAY:[I

    .line 65
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleIds:[I

    .line 67
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleIcons:[I

    .line 69
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleLabels:[I

    .line 71
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleCheckBoxes:[I

    .line 74
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_airplane_toggle"

    aput-object v1, v0, v4

    const-string v1, "pref_rotate_toggle"

    aput-object v1, v0, v5

    const-string v1, "pref_bluetooth_toggle"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "pref_gps_toggle"

    aput-object v2, v0, v1

    const-string v1, "pref_wifi_toggle"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pref_flashlight_toggle"

    aput-object v2, v0, v1

    const-string v1, "pref_mobile_data_toggle"

    aput-object v1, v0, v3

    const/4 v1, 0x7

    const-string v2, "pref_network_mode_toggle"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_sound_toggle"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->BUTTONS_DEFAULT:Ljava/lang/String;

    return-void

    .line 65
    :array_0
    .array-data 0x4
        0x89t 0x0t 0xet 0x7ft
        0x8dt 0x0t 0xet 0x7ft
        0x91t 0x0t 0xet 0x7ft
        0x95t 0x0t 0xet 0x7ft
        0x99t 0x0t 0xet 0x7ft
        0x9dt 0x0t 0xet 0x7ft
    .end array-data

    .line 67
    :array_1
    .array-data 0x4
        0x8at 0x0t 0xet 0x7ft
        0x8et 0x0t 0xet 0x7ft
        0x92t 0x0t 0xet 0x7ft
        0x96t 0x0t 0xet 0x7ft
        0x9at 0x0t 0xet 0x7ft
        0x9et 0x0t 0xet 0x7ft
    .end array-data

    .line 69
    :array_2
    .array-data 0x4
        0x8bt 0x0t 0xet 0x7ft
        0x8ft 0x0t 0xet 0x7ft
        0x93t 0x0t 0xet 0x7ft
        0x97t 0x0t 0xet 0x7ft
        0x9bt 0x0t 0xet 0x7ft
        0x9ft 0x0t 0xet 0x7ft
    .end array-data

    .line 71
    :array_3
    .array-data 0x4
        0x8ct 0x0t 0xet 0x7ft
        0x90t 0x0t 0xet 0x7ft
        0x94t 0x0t 0xet 0x7ft
        0x98t 0x0t 0xet 0x7ft
        0x9ct 0x0t 0xet 0x7ft
        0xa0t 0x0t 0xet 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    .line 128
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/tablet/SettingsView;Landroid/os/Handler;)V

    .line 130
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;->observe()V

    .line 131
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/tablet/SettingsView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;

    return-object p1
.end method

.method private getResourcesById(Ljava/lang/String;)[I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    .line 205
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 224
    :goto_0
    return-object v0

    .line 207
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 209
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    goto :goto_0

    .line 211
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    goto :goto_0

    .line 213
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    goto :goto_0

    .line 215
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    goto :goto_0

    .line 217
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    goto :goto_0

    .line 219
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    goto :goto_0

    .line 221
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    new-array v0, v2, [I

    fill-array-data v0, :array_8

    goto/16 :goto_0

    .line 224
    :cond_8
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    goto/16 :goto_0

    .line 206
    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x8t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 208
    :array_1
    .array-data 0x4
        0x38t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 210
    :array_2
    .array-data 0x4
        0xb8t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x8t 0x7ft
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 212
    :array_3
    .array-data 0x4
        0x79t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x8t 0x7ft
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 214
    :array_4
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x8t 0x7ft
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 216
    :array_5
    .array-data 0x4
        0x77t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x8t 0x7ft
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 218
    :array_6
    .array-data 0x4
        0x75t 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x8t 0x7ft
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 220
    :array_7
    .array-data 0x4
        0x67t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x8t 0x7ft
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 222
    :array_8
    .array-data 0x4
        0x8bt 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x8t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 224
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private onClickSettings()V
    .locals 3

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 310
    return-void
.end method

.method private onClickToggle(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/high16 v4, 0x1000

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 301
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V

    .line 302
    return-void

    .line 271
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 275
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 279
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "net.cactii.flash2"

    const-string v2, "net.cactii.flash2.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 289
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 293
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 297
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SOUND_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setToggleController(Ljava/lang/String;I)V
    .locals 3
    .parameter "id"
    .parameter "mCheckbox"

    .prologue
    .line 184
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    new-instance v1, Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    new-instance v1, Lcom/android/systemui/statusbar/policy/AutoRotateController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    goto :goto_0

    .line 188
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    goto :goto_0

    .line 190
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mGps:Lcom/android/systemui/statusbar/policy/LocationController;

    goto :goto_0

    .line 192
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/WifiController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mWifi:Lcom/android/systemui/statusbar/policy/WifiController;

    goto :goto_0

    .line 194
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mFlashLight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    goto/16 :goto_0

    .line 196
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 197
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileDataController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mMobileData:Lcom/android/systemui/statusbar/policy/MobileDataController;

    goto/16 :goto_0

    .line 198
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkModeController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mNetworkMode:Lcom/android/systemui/statusbar/policy/NetworkModeController;

    goto/16 :goto_0

    .line 200
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Lcom/android/systemui/statusbar/policy/SoundController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/SoundController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mSound:Lcom/android/systemui/statusbar/policy/SoundController;

    goto/16 :goto_0
.end method

.method private setToggleResources(IIIII)V
    .locals 3
    .parameter "resourceId"
    .parameter "resourceIcon"
    .parameter "resourceLabel"
    .parameter "newResourceIcon"
    .parameter "newResourceLabel"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 229
    .local v0, mToggle:Landroid/widget/LinearLayout;
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 230
    .local v1, mToggleImageView:Landroid/widget/ImageView;
    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 232
    .local v2, mToggleTextView:Landroid/widget/TextView;
    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(I)V

    .line 233
    return-void
.end method

.method private updateToggles()V
    .locals 9

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggles:[Ljava/lang/String;

    .line 162
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggles:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggles:[Ljava/lang/String;

    aget-object v0, v0, v6

    const-string v1, "\\"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, mToggleName:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getResourcesById(Ljava/lang/String;)[I

    move-result-object v8

    .line 165
    .local v8, resources:[I
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleIds:[I

    aget v1, v0, v6

    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleIcons:[I

    aget v2, v0, v6

    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleLabels:[I

    aget v3, v0, v6

    const/4 v0, 0x0

    aget v4, v8, v0

    const/4 v0, 0x1

    aget v5, v8, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/tablet/SettingsView;->setToggleResources(IIIII)V

    .line 166
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->TOGGLE_ID_ARRAY:[I

    const/4 v1, 0x2

    aget v1, v8, v1

    aput v1, v0, v6

    .line 167
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleCheckBoxes:[I

    aget v0, v0, v6

    invoke-direct {p0, v7, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->setToggleController(Ljava/lang/String;I)V

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 169
    .end local v7           #mToggleName:Ljava/lang/String;
    .end local v8           #resources:[I
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 242
    :sswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->TOGGLE_ID_ARRAY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickToggle(I)V

    goto :goto_0

    .line 245
    :sswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->TOGGLE_ID_ARRAY:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickToggle(I)V

    goto :goto_0

    .line 248
    :sswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->TOGGLE_ID_ARRAY:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickToggle(I)V

    goto :goto_0

    .line 251
    :sswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->TOGGLE_ID_ARRAY:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickToggle(I)V

    goto :goto_0

    .line 254
    :sswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->TOGGLE_ID_ARRAY:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickToggle(I)V

    goto :goto_0

    .line 257
    :sswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->TOGGLE_ID_ARRAY:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickToggle(I)V

    goto :goto_0

    .line 260
    :sswitch_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickSettings()V

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x7f0e0089 -> :sswitch_0
        0x7f0e008d -> :sswitch_1
        0x7f0e0091 -> :sswitch_2
        0x7f0e0095 -> :sswitch_3
        0x7f0e0099 -> :sswitch_4
        0x7f0e009d -> :sswitch_5
        0x7f0e00a6 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->release()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mGps:Lcom/android/systemui/statusbar/policy/LocationController;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mGps:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->release()V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mSound:Lcom/android/systemui/statusbar/policy/SoundController;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mSound:Lcom/android/systemui/statusbar/policy/SoundController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SoundController;->release()V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->release()V

    .line 181
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 135
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 137
    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00a2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 138
    new-instance v3, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00a5

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    .line 140
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 141
    sget-object v2, Lcom/android/systemui/statusbar/tablet/SettingsView;->BUTTONS_DEFAULT:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;

    const-string v3, "no_toggles"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->updateToggles()V

    .line 145
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggles:[Ljava/lang/String;

    array-length v1, v2

    .line 146
    .local v1, mLastVisible:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 147
    if-ge v0, v1, :cond_1

    .line 148
    sget-object v2, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleIds:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleIds:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 153
    .end local v0           #i:I
    .end local v1           #mLastVisible:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v2, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 154
    sget-object v2, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleIds:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 157
    :cond_3
    const v2, 0x7f0e00a6

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method
