import 'package:flutter/material.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/utils/constants/image_constants.dart';

class Dummydb {
  static final List movies = [
    {
      'img': ImageConstants.GOAT,
      'rating': '9.0',
      'votes': '475.7K',
      'name': 'The Greatest of All Time',
      'D': '2D',
      'lang': 'Tamil, Telugu',
      'duration': '3h 3m',
      'genre': 'Action, Drama, Thriller',
      'age': 'UA',
      'date': '5 Sep, 2024',
      'desc':
          'Consequences of an unknown past haunt the present of a special anti-terrorist squad. How will they confront it?',
      'thumb': ImageConstants.MD_GOAT,
      'reviews': [
        {
          'name': 'Manish',
          'rating': '9',
          'hashtags': '#SuperDirection #AwesomeStory',
          'desc':
              '"Goat" is a blockbuster that brings out the best of Vijay\'s acting prowess! The film is a perfect blend of action, emotion, and drama, with Vijay delivering a power-packed performance that keeps the audience on the edge of their seats. The storyline, which revolves around an underdog rising to become the "Greatest of All Time," is inspiring and engaging. The direction is tight, the music is electrifying, and the dialogues are whistle-worthy. If you\'re a fan of Vijay, this film is an absolute treat!',
          'date': '2024-09-10', // Example date
        },
        {
          'name': 'Sanjana',
          'rating': '7',
          'hashtags': '#Entertaining #PredictablePlot',
          'desc':
              '"Goat" is a decent film with plenty of entertainment, especially for Vijay fans. While the first half is gripping with some great action sequences and a powerful performance by Vijay, the second half becomes a bit predictable. The film could have used some unique twists to elevate the story. Nonetheless, it’s a great watch for a fun movie night, but don’t expect anything groundbreaking.',
          'date': '2024-09-08', // Example date
        },
        {
          'name': 'Arjun',
          'rating': '6',
          'hashtags': '#VijayRocks #SameOldStory',
          'desc':
              'As much as I love Vijay’s acting, "Goat" didn’t quite meet my expectations. The film felt like a rehash of several other underdog stories without adding anything new to the genre. Vijay’s performance is the saving grace, but the script needed more depth and originality. The cinematography and action choreography are on point, but I hoped for a more compelling narrative.',
          'date': '2024-09-05', // Example date
        },
        {
          'name': 'Priya',
          'rating': '8.5',
          'hashtags': '#MustWatch #VijayFan #EmotionalJourney',
          'desc': 'Awesome Film',
          'date': '2024-09-01', // Example date
        },
      ],
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '4',
      'trailer_lang': ['Others', 'தமிழ்', 'తెలుగు'],
      'trailer': [
        'https://youtu.be/AcV2asgk-tA',
        'https://youtu.be/f3xT1Nh5SNA'
            'https://youtu.be/jxCRlebiebw',
        'https://youtu.be/ITQMsaLtG1U'
      ],
      'ticket_rates': [
        '₹0 - ₹100',
        '₹101 - ₹200',
        '₹201 - ₹300',
        '₹301 - ₹400',
        '₹401 - ₹500'
      ],
      'rate_count': '5',
      '2D_theatre': [
        {
          'theatre_name': 'Sangeetha Cinema: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['12:00 PM', '03:00 PM', '06:00 PM', '09:00 PM'],
          'rate': [
            {'type': 'BLUE CIRCLE', 'rate': '₹350', 'avail': 'AVAILABLE'}
          ]
        },
        {
          'theatre_name': 'PVR Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['11:00 AM', '02:00 PM', '05:00 PM', '08:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Cinepolis: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['10:00 AM', '01:00 PM', '04:00 PM', '07:00 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
      ],
    },
    {
      'img': ImageConstants.BHARATHANATYAM,
      'rating': '9.3',
      'votes': '900',
      'name': 'Bharathanatyam',
      'D': '2D',
      'lang': 'Malayalam',
      'duration': '2h 1m',
      'genre': 'Drama, Family',
      'age': 'U',
      'date': '30 Aug, 2024',
      'desc':
          'A proud and traditional family tries everything to protect their reputation from being destroyed by nosy people in their society. To what extent will they go to uphold their image?',
      'thumb': ImageConstants.MD_BHARATHANATYM,
      'reviews': [
        {
          'name': 'Anjali',
          'rating': '9',
          'hashtags': '#Mesmerizing #CulturalEpic #MustWatch',
          'desc':
              '"Bharathanatyam" is a beautiful tribute to the classical dance form. The film brilliantly captures the essence of Indian culture and the dedication of a dancer’s life. The lead actress delivers an outstanding performance that brings both grace and emotion to the screen. The cinematography is breathtaking, and the music is soul-stirring. A must-watch for lovers of dance and Indian culture!',
          'date': '2024-09-12', // Example date
        },
        {
          'name': 'Ravi',
          'rating': '8',
          'hashtags': '#VisualTreat #GreatPerformance',
          'desc':
              '"Bharathanatyam" is a visual treat! The film takes you on a journey through the rich history and discipline of the classical dance form. The storyline is engaging, though it moves at a slow pace at times. The performances are top-notch, especially the lead actress who truly embodies her character. Overall, it’s an impressive film that stays true to its cultural roots.',
          'date': '2024-09-10', // Example date
        },
        {
          'name': 'Meera',
          'rating': '7',
          'hashtags': '#CulturalJourney #SlowPaced',
          'desc':
              '"Bharathanatyam" is a well-crafted film that captures the struggles and triumphs of a dedicated dancer. While the film is visually stunning and culturally rich, it tends to drag in the middle portions. The narrative could have been tighter to maintain the momentum. However, the performances and choreography make it worth watching, especially for those interested in the art form.',
          'date': '2024-09-07', // Example date
        },
        {
          'name': 'Ajay',
          'rating': '8.5',
          'hashtags': '#Artistic #InspiringStory #GreatDirection',
          'desc':
              '"Bharathanatyam" stands out for its artistic approach and inspiring storyline. The film beautifully portrays the passion and sacrifices involved in pursuing classical dance. The director has done an excellent job in capturing the nuances of the dance and the emotions of the characters. The supporting cast also adds depth to the narrative. A compelling watch that inspires and entertains.',
          'date': '2024-09-05', // Example date
        },
      ],
      'cast': [
        {
          'img': ImageConstants.SAIJU_KURUP,
          'name': 'Saiju Kurup',
        },
        {
          'img': ImageConstants.SAI_KUMAR,
          'name': 'Sai Kumar',
        },
        {
          'img': ImageConstants.SRUTHY_SURESH,
          'name': 'Sruthy Suresh',
        },
        {
          'img': ImageConstants.ABHIRAM_RADHAKRISHNAN,
          'name': 'Abhiram Radhakrishnan',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.KRISHNADAS_MURALI,
          'name': 'Krishnadas Murali',
          'role': 'Director, Writer'
        },
        {
          'img': ImageConstants.ANUPAMA_B_NAMBIAR,
          'name': 'Anupama B Nambiar',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.LINI_MARIAM_DAVID,
          'name': 'Lini Mariam David',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.SAMUEL_ABY,
          'name': 'Samuel Aby',
          'role': 'Musician'
        },
      ],
      'count': '',
      'trailer_lang': ['MALAYALAM'],
      'trailer': ['https://youtu.be/lVnHxwWftxw'],
      'ticket_rates': ['₹0 - ₹100', '₹101 - ₹200', '₹201 - ₹300'],
      'rate_count': '3',
      '2D_theatre': [
        {
          'theatre_name': 'Lulu Mall Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['11:00 AM', '02:00 PM', '05:00 PM', '08:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Cinepolis Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['12:30 PM', '03:30 PM', '06:30 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Satyam Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['10:15 AM', '01:15 PM', '04:15 PM'],
          'rate': [
            {'type': 'BLUE CIRCLE', 'rate': '₹350', 'avail': 'AVAILABLE'}
          ]
        },
      ],
    },
    {
      'img': ImageConstants.ARM,
      'rating': '8.3',
      'votes': '600',
      'name': 'A.R.M',
      'D': '2D, 3D',
      'lang': 'Malayalam, Tamil, Telugu, Hindi, Kannada',
      'duration': '2h 23m',
      'genre': 'Action, Adventure, Drama, Period',
      'age': 'UA',
      'date': '12 Sep, 2024',
      'desc':
          "Set in Northern Kerala across the years 1900, 1950, and 1990, this epic tale follows three generations of heroes Maniyan, Kunjikelu, and Ajayan as they strive to protect the land's most vital treasure.",
      'thumb': ImageConstants.MD_ARM,
      'reviews': [
        {
          'name': 'Krishna',
          'rating': '9.5',
          'hashtags': '#ThrillingExperience #Masterpiece #MustWatch',
          'desc':
              '"A.R.M" is a brilliantly crafted thriller that keeps you on the edge of your seat from start to finish. The plot is filled with unexpected twists and turns that are both thrilling and engaging. The lead actor delivers a powerful performance, supported by a strong ensemble cast. The direction is crisp, and the cinematography is visually striking, making it one of the best Malayalam films of the year. A must-watch for fans of intense thrillers!',
          'date': '2024-09-12', // Example date
        },
        {
          'name': 'Sreekanth',
          'rating': '8',
          'hashtags': '#GrippingStoryline #StrongPerformance',
          'desc':
              '"A.R.M" offers a gripping storyline that unfolds with great suspense and drama. The narrative is well-paced, and the suspense is maintained throughout the film. The lead actor’s portrayal of a complex character is commendable, and the background score enhances the intensity of the scenes. While the film excels in many areas, some portions feel a bit stretched. Nevertheless, it’s a solid watch for thriller enthusiasts.',
          'date': '2024-09-10', // Example date
        },
        {
          'name': 'Nandini',
          'rating': '7.5',
          'hashtags': '#IntriguingPlot #CouldBeBetter',
          'desc':
              '"A.R.M" has an intriguing plot that draws you in, but it could have been executed better. The story has potential with its strong premise and unexpected twists, but the pacing feels uneven in some parts. The performances are strong, especially the supporting cast, who bring depth to the film. It’s a good attempt at a thriller, but with some room for improvement in storytelling.',
          'date': '2024-09-08', // Example date
        },
        {
          'name': 'Vikram',
          'rating': '8.5',
          'hashtags': '#EdgeOfTheSeat #GreatDirection #WellExecuted',
          'desc':
              '"A.R.M" is a well-executed thriller that combines great direction with stellar performances. The film succeeds in creating a tense atmosphere that keeps the audience hooked throughout. The plot twists are cleverly placed, and the climax is both satisfying and thought-provoking. The director has done a fantastic job of keeping the suspense alive. A must-watch for those who love a good psychological thriller!',
          'date': '2024-09-05', // Example date
        },
      ],
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '10',
      'trailer_lang': ['മലയാളം', 'हिन्दी', 'தமிழ்', 'తెలుగు', 'ಕನ್ನಡ'],
      'trailer': [
        'https://youtu.be/rFgS10V8908',
        'https://youtu.be/TWQjWLwY9ZE',
        'https://youtu.be/wTWKfTIpvHc',
        'https://youtu.be/UuY1Nlm6zrE',
        'https://youtu.be/O-glTKz7ANM',
        'https://youtu.be/p-hsQrmCeaw',
        'https://youtu.be/sudjm_tz5Fc',
        'https://youtu.be/_qpiFuyO2FA',
        'https://youtu.be/ufeSP_CLFW0',
        'https://youtu.be/SOW4A8rSeQQ'
      ],
      'ticket_rates': ['₹0 - ₹100', '₹101 - ₹200'],
      'rate_count': '2',
      '2D_theatre': [
        {
          'theatre_name': 'Sangeetha Cinema: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['12:00 PM', '03:00 PM', '06:00 PM', '09:00 PM'],
          'rate': [
            {'type': 'BLUE CIRCLE', 'rate': '₹350', 'avail': 'AVAILABLE'}
          ]
        },
        {
          'theatre_name': 'PVR Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['11:00 AM', '02:00 PM', '05:00 PM', '08:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Cinepolis: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['10:00 AM', '01:00 PM', '04:00 PM', '07:00 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
      ],
      '3D_theatre': [
        {
          'theatre_name': 'PVR Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['1:00 PM', '4:00 PM', '7:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Inox Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['2:30 PM', '5:30 PM', '8:30 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Carnival Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['12:00 PM', '3:00 PM', '6:00 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
      ],
    },
    {
      'img': ImageConstants.NUNNAKUZHI,
      'rating': '8.5',
      'votes': '12.3K',
      'name': 'Nunakkuzhi',
      'D': '2D',
      'lang': 'Malayalam',
      'duration': '2h 6m',
      'genre': 'Comedy, Thriller',
      'age': 'UA',
      'date': '15 Aug, 2024',
      'desc':
          "A young businessman`s life falls apart when he becomes embroiled in a web of lies and mistaken identities in a search for a misplaced laptop!",
      'thumb': ImageConstants.MD_NUNNAKUZHI,
      'reviews': [
        {
          'name': 'Anitha',
          'rating': '9',
          'hashtags': '#HeartfeltDrama #BrilliantActing #MustWatch',
          'desc':
              '"Nunnakuzhi" is a deeply moving film that captures the essence of life in a small village with authenticity and grace. The film is carried by outstanding performances from its lead actors, who bring their characters to life with remarkable depth. The storyline is simple yet powerful, focusing on human emotions, relationships, and the challenges of rural life. The direction is sensitive and nuanced, making it a must-watch for those who appreciate meaningful cinema.',
          'date': '2024-09-12', // Example date
        },
        {
          'name': 'Rahul',
          'rating': '8',
          'hashtags': '#RealisticPortrayal #BeautifulCinematography',
          'desc':
              '"Nunnakuzhi" is a beautifully shot film that takes you on a journey through the lives of its characters in a small village setting. The cinematography captures the rustic beauty of rural Kerala, and the narrative unfolds with a natural flow. While the film is a bit slow-paced, it compensates with its strong character development and realistic portrayal of village life. A great watch for those who enjoy films rooted in realism.',
          'date': '2024-09-10', // Example date
        },
        {
          'name': 'Divya',
          'rating': '7.5',
          'hashtags': '#EmotionalStory #SlowPaced',
          'desc':
              '"Nunnakuzhi" tells an emotional story that tugs at your heartstrings. The film has its moments of brilliance, especially in the way it portrays the simple joys and hardships of village life. However, the pacing could have been tighter to keep the audience more engaged. Despite this, the performances and the authenticity of the setting make it worth a watch, particularly for those who enjoy a slow-burn drama.',
          'date': '2024-09-08', // Example date
        },
        {
          'name': 'Ajay',
          'rating': '8.5',
          'hashtags': '#GreatDirection #AuthenticFeel #TouchingStory',
          'desc':
              '"Nunnakuzhi" stands out for its authentic portrayal of village life and the emotional depth of its narrative. The film’s direction is top-notch, capturing the subtle nuances of rural dynamics with sensitivity. The supporting cast delivers strong performances, adding layers to the story. The film’s realistic approach and touching storyline make it a memorable experience. Highly recommended for fans of Malayalam cinema that reflects true-to-life stories.',
          'date': '2024-09-05', // Example date
        },
      ],
      'cast': [
        {
          'img': ImageConstants.SAIJU_KURUP,
          'name': 'Saiju Kurup',
        },
        {
          'img': ImageConstants.SAI_KUMAR,
          'name': 'Sai Kumar',
        },
        {
          'img': ImageConstants.SRUTHY_SURESH,
          'name': 'Sruthy Suresh',
        },
        {
          'img': ImageConstants.ABHIRAM_RADHAKRISHNAN,
          'name': 'Abhiram Radhakrishnan',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.KRISHNADAS_MURALI,
          'name': 'Krishnadas Murali',
          'role': 'Director, Writer'
        },
        {
          'img': ImageConstants.ANUPAMA_B_NAMBIAR,
          'name': 'Anupama B Nambiar',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.LINI_MARIAM_DAVID,
          'name': 'Lini Mariam David',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.SAMUEL_ABY,
          'name': 'Samuel Aby',
          'role': 'Musician'
        },
      ],
      'count': '',
      'trailer_lang': ['MALAYALAM'],
      'trailer': {
        ['https://youtu.be/Ek78m6BOGTQ'],
      },
      'ticket_rates': [
        '₹0 - ₹100',
        '₹101 - ₹200',
        '₹201 - ₹300',
        '₹301 - ₹400',
        '₹401 - ₹500'
      ],
      'rate_count': '5',
      '2D_theatre': [
        {
          'theatre_name': 'Lulu Mall Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['11:00 AM', '02:00 PM', '05:00 PM', '08:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Cinepolis Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['12:30 PM', '03:30 PM', '06:30 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Satyam Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['10:15 AM', '01:15 PM', '04:15 PM'],
          'rate': [
            {'type': 'BLUE CIRCLE', 'rate': '₹350', 'avail': 'AVAILABLE'}
          ]
        },
      ],
    },
    {
      'img': ImageConstants.KISHKINDA_KANDAM,
      'rating': '8.5',
      'votes': '586',
      'name': 'Kishkindha Kaandam',
      'D': '2D',
      'lang': 'Malayalam',
      'duration': '2h 5m',
      'genre': 'Mystery, Thriller',
      'age': 'UA',
      'date': '12 Sep, 2024',
      'desc':
          "Bizarre occurrences in a monkey-inhabited village drive a newlywed couple and forest officials to seek answers behind the strange events.",
      'thumb': ImageConstants.MD_KISHKINDA_KANDAM,
      'reviews': [
        {
          'name': 'Suresh',
          'rating': '9',
          'hashtags': '#EpicAdventure #CinematicMasterpiece #MustWatch',
          'desc':
              '"Kishkinda Kandam" is a cinematic masterpiece that combines breathtaking visuals with a riveting story. The film transports you to a world of adventure and mythology, delivering a grand experience. The direction is impeccable, and the performances are stellar, especially the lead actor who brings a remarkable depth to his role. The special effects and cinematography are top-notch, making it a must-watch for fans of epic adventures and mythological tales.',
          'date': '2024-09-15', // Example date
        },
        {
          'name': 'Anu',
          'rating': '8',
          'hashtags': '#MythologicalDrama #StrongPerformances #VisualTreat',
          'desc':
              '"Kishkinda Kandam" offers a visually stunning and engaging experience. The film’s portrayal of mythological events is both captivating and thought-provoking. The performances are strong, with standout roles that add depth to the story. While the pacing can be a bit uneven at times, the film’s rich visual and emotional appeal makes it a worthwhile watch for those interested in mythological dramas.',
          'date': '2024-09-12', // Example date
        },
        {
          'name': 'Rajesh',
          'rating': '7.5',
          'hashtags': '#AmbitiousFilm #GoodEffort #SomewhatSlow',
          'desc':
              '"Kishkinda Kandam" is an ambitious film that strives to bring ancient myths to life with grandeur. The visual effects and set designs are impressive, creating an immersive experience. However, the film’s pacing can feel slow, and some of the narrative elements could have been more tightly woven. Despite these issues, the film succeeds in delivering a compelling story and showcases some excellent performances. A good effort with room for refinement.',
          'date': '2024-09-10', // Example date
        },
        {
          'name': 'Meera',
          'rating': '8.5',
          'hashtags': '#MythologyInFilm #EngagingStory #WellDirected',
          'desc':
              '"Kishkinda Kandam" is a well-directed film that brings mythological stories to the forefront with engaging storytelling and impressive direction. The film’s attention to detail in depicting the mythological world is commendable. The lead actor delivers a powerful performance that enhances the narrative. The film may have some pacing issues, but it is overall an engaging watch that offers a fresh take on classic tales. Highly recommended for fans of mythology and epic storytelling.',
          'date': '2024-09-08', // Example date
        },
      ],
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '',
      'trailer_lang': 'MALAYALAM',
      'trailer': {
        [' https://youtu.be/6jR7lL-o7js']
      },
      'ticket_rates': [
        '₹0 - ₹100',
        '₹101 - ₹200',
        '₹201 - ₹300',
        '₹301 - ₹400',
        '₹401 - ₹500'
      ],
      'rate_count': '5',
      '2D_theatre': [
        {
          'theatre_name': 'Lulu Mall Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['11:00 AM', '02:00 PM', '05:00 PM', '08:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Cinepolis Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['12:30 PM', '03:30 PM', '06:30 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Satyam Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['10:15 AM', '01:15 PM', '04:15 PM'],
          'rate': [
            {'type': 'BLUE CIRCLE', 'rate': '₹350', 'avail': 'AVAILABLE'}
          ]
        },
      ],
    },
    {
      'img': ImageConstants.STREE2,
      'rating': '8.4',
      'votes': '18.9K',
      'name': 'Stree 2: Sarkate Ka Aatank',
      'D': '2D',
      'lang': 'Hindi',
      'duration': '2h 29m',
      'genre': 'Comedy, Horror',
      'age': 'UA',
      'date': '15 Aug, 2024',
      'desc':
          "After the events of Stree, the town of Chanderi is being haunted again. This time, women are mysteriously abducted by a terrifying headless entity. Once again, it`s up to Bicky and his friends to save their town and loved ones.",
      'thumb': ImageConstants.MD_STREE2,
      'reviews': [
        {
          'name': 'Aditi',
          'rating': '8.5',
          'hashtags': '#HorrorComedy #EntertainingSequel #MustWatch',
          'desc':
              '"Stree 2" successfully continues the legacy of its predecessor with a perfect blend of horror and comedy. The film maintains the suspense and humor while introducing new twists that keep the audience engaged. The cast delivers strong performances, with standout roles adding depth to the story. The direction keeps the tension high while balancing comedic moments, making it a highly entertaining sequel that fans of the genre will enjoy.'
        },
        {
          'name': 'Ravi',
          'rating': '7',
          'hashtags': '#FunFilm #PredictablePlot #GoodEntertainment',
          'desc':
              '"Stree 2" is a fun sequel that brings back the elements that made the first film popular. While the humor and horror elements are still enjoyable, the plot feels somewhat predictable. The performances are solid, and the film’s atmosphere successfully captures the spooky yet humorous tone. It’s an entertaining watch, though it doesn’t quite reach the highs of the original. A good film for fans of the genre, but don’t expect too many surprises.'
        },
        {
          'name': 'Meera',
          'rating': '8',
          'hashtags': '#SpookyFun #GreatCast #Entertaining',
          'desc':
              '"Stree 2" delivers a delightful mix of chills and laughs. The film’s strength lies in its cast, who bring both charm and intensity to their roles. The horror-comedy genre is handled with finesse, and the screenplay keeps the audience entertained throughout. While some of the scares are a bit formulaic, the film compensates with its engaging performances and clever humor. A worthy sequel that provides a fun and spooky experience.'
        },
        {
          'name': 'Arjun',
          'rating': '7.5',
          'hashtags': '#ComedyHorror #GoodSequel #Entertaining',
          'desc':
              '"Stree 2" is a worthy follow-up to the original, continuing the blend of comedy and horror with some fresh elements. The film is well-paced and maintains the quirky charm of its predecessor. However, the plot doesn’t break new ground and some of the jokes and scares feel recycled. Despite this, the movie is an enjoyable watch with strong performances and a few genuine laughs. Ideal for fans of the first film looking for more of the same.'
        }
      ],
      'cast': [
        {
          'img': ImageConstants.SAIJU_KURUP,
          'name': 'Saiju Kurup',
        },
        {
          'img': ImageConstants.SAI_KUMAR,
          'name': 'Sai Kumar',
        },
        {
          'img': ImageConstants.SRUTHY_SURESH,
          'name': 'Sruthy Suresh',
        },
        {
          'img': ImageConstants.ABHIRAM_RADHAKRISHNAN,
          'name': 'Abhiram Radhakrishnan',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.KRISHNADAS_MURALI,
          'name': 'Krishnadas Murali',
          'role': 'Director, Writer'
        },
        {
          'img': ImageConstants.ANUPAMA_B_NAMBIAR,
          'name': 'Anupama B Nambiar',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.LINI_MARIAM_DAVID,
          'name': 'Lini Mariam David',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.SAMUEL_ABY,
          'name': 'Samuel Aby',
          'role': 'Musician'
        },
      ],
      'count': '4',
      'trailer_lang': ['Others', 'हिन्दी'],
      'trailer': {
        [
          'https://youtu.be/MlMfQQOagrI',
          'https://youtu.be/F7ClPFmA3Fk',
          'https://youtu.be/VlvOgk5BHS4',
          'https://youtu.be/D1SFjYoXRB8'
        ],
      },
      'ticket_rates': ['₹0 - ₹100', '₹101 - ₹200', '₹201 - ₹300'],
      'rate_count': '3',
      '2D_theatre': [
        {
          'theatre_name': 'Sangeetha Cinema: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['12:00 PM', '03:00 PM', '06:00 PM', '09:00 PM'],
          'rate': [
            {'type': 'BLUE CIRCLE', 'rate': '₹350', 'avail': 'AVAILABLE'}
          ]
        },
        {
          'theatre_name': 'PVR Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['11:00 AM', '02:00 PM', '05:00 PM', '08:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Cinepolis: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['10:00 AM', '01:00 PM', '04:00 PM', '07:00 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
      ],
    },
    {
      'img': ImageConstants.SURYAS_SATURDAY,
      'rating': '8.5',
      'votes': '8.4K',
      'name': "Surya's Saturday",
      'D': '2D',
      'lang': 'Malayalam, Tamil, Hindi',
      'duration': '2h 50m',
      'genre': 'Action, Drama',
      'age': 'UA',
      'date': '29 Aug, 2024',
      'desc':
          'Prepare for a Massive Storm in theaters worldwide on August 29th, 2024.',
      'thumb': ImageConstants.MD_SURYASSATURDAY,
      'reviews': [
        {
          'name': 'Aditi',
          'rating': '8.5/10',
          'hashtags': '#HorrorComedy #EntertainingSequel #MustWatch',
          'desc':
              '"Stree 2" successfully continues the legacy of its predecessor with a perfect blend of horror and comedy. The film maintains the suspense and humor while introducing new twists that keep the audience engaged. The cast delivers strong performances, with standout roles adding depth to the story. The direction keeps the tension high while balancing comedic moments, making it a highly entertaining sequel that fans of the genre will enjoy.',
          'date': '2024-09-18', // Example date
        },
        {
          'name': 'Ravi',
          'rating': '7',
          'hashtags': '#FunFilm #PredictablePlot #GoodEntertainment',
          'desc':
              '"Stree 2" is a fun sequel that brings back the elements that made the first film popular. While the humor and horror elements are still enjoyable, the plot feels somewhat predictable. The performances are solid, and the film’s atmosphere successfully captures the spooky yet humorous tone. It’s an entertaining watch, though it doesn’t quite reach the highs of the original. A good film for fans of the genre, but don’t expect too many surprises.',
          'date': '2024-09-16', // Example date
        },
        {
          'name': 'Meera',
          'rating': '8',
          'hashtags': '#SpookyFun #GreatCast #Entertaining',
          'desc':
              '"Stree 2" delivers a delightful mix of chills and laughs. The film’s strength lies in its cast, who bring both charm and intensity to their roles. The horror-comedy genre is handled with finesse, and the screenplay keeps the audience entertained throughout. While some of the scares are a bit formulaic, the film compensates with its engaging performances and clever humor. A worthy sequel that provides a fun and spooky experience.',
          'date': '2024-09-14', // Example date
        },
        {
          'name': 'Arjun',
          'rating': '7.5',
          'hashtags': '#ComedyHorror #GoodSequel #Entertaining',
          'desc':
              '"Stree 2" is a worthy follow-up to the original, continuing the blend of comedy and horror with some fresh elements. The film is well-paced and maintains the quirky charm of its predecessor. However, the plot doesn’t break new ground and some of the jokes and scares feel recycled. Despite this, the movie is an enjoyable watch with strong performances and a few genuine laughs. Ideal for fans of the first film looking for more of the same.',
          'date': '2024-09-12', // Example date
        },
      ],
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '3',
      'trailer_lang': ['മലയാളം', 'हिन्दी', 'தமிழ்'],
      'trailer': [
        'https://youtu.be/-qbpxq2gews',
        'https://youtu.be/Z1dS-hHBxJY',
        'https://youtu.be/nEgUn2W8ygY',
      ],
      'ticket_rates': ['₹0 - ₹100', '₹101 - ₹200', '₹201 - ₹300'],
      'rate_count': '3',
      '2D_theatre': [
        {
          'theatre_name': 'Sangeetha Cinema: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['12:00 PM', '03:00 PM', '06:00 PM', '09:00 PM'],
          'rate': [
            {'type': 'BLUE CIRCLE', 'rate': '₹350', 'avail': 'AVAILABLE'}
          ]
        },
        {
          'theatre_name': 'PVR Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['11:00 AM', '02:00 PM', '05:00 PM', '08:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Cinepolis: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['10:00 AM', '01:00 PM', '04:00 PM', '07:00 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
      ],
    },
    {
      'img': ImageConstants.THANGALAAN,
      'rating': '8.0',
      'votes': '12.5K',
      'name': 'Thangalaan',
      'D': '2D',
      'lang': 'Malayalam, Tamil, Hindi, Telugu',
      'duration': '2h 36m',
      'genre': 'Action, Adventure, Historical',
      'age': 'UA',
      'date': '15 Aug, 2024',
      'desc':
          "During the British Raj, a fierce tribal leader Thangalaan and his tribe assist Lord Clement, a British General, to trace gold in their village. While searching for the gold, the villagers earn the wrath of Aarathi, an apparent sorceress.",
      'thumb': ImageConstants.MD_THANGALAAN,
      'reviews': [
        {
          'name': 'Nisha',
          'rating': '9',
          'hashtags': '#FeelGoodFilm #SuryaShines #MustWatch',
          'desc':
              '"Surya\'s Saturday" is a heartwarming film that showcases Surya’s incredible acting range. The story, centered around a transformative Saturday in Surya’s life, is both uplifting and engaging. The film balances humor and drama effectively, and Surya’s performance is nothing short of spectacular. The direction is tight, and the supporting cast adds depth to the narrative. It’s a must-watch for those who appreciate emotionally resonant cinema and strong performances.',
          'date': '2024-09-19', // Example date
        },
        {
          'name': 'Raj',
          'rating': '8',
          'hashtags': '#CharmingFilm #GreatPerformance #FeelGoodFactor',
          'desc':
              '"Surya\'s Saturday" is an enjoyable film that highlights Surya’s charm and versatility as an actor. The film’s narrative is engaging, and the way it unfolds over a single day provides a unique and refreshing perspective. While the plot can be a bit predictable, the film’s overall charm and Surya’s excellent performance make it a delightful watch. It’s a great choice for a feel-good movie night.',
          'date': '2024-09-17', // Example date
        },
        {
          'name': 'Deepa',
          'rating': '7.5',
          'hashtags': '#Entertaining #StrongLead #PredictablePlot',
          'desc':
              '"Surya\'s Saturday" is a well-crafted film with a standout performance by Surya. The film’s exploration of a single day in the protagonist’s life is intriguing, and the emotional beats are well-handled. However, some of the plot twists feel predictable, and the film relies heavily on Surya’s performance to carry the story. Despite this, it’s an entertaining film with moments of genuine warmth and insight.',
          'date': '2024-09-15', // Example date
        },
        {
          'name': 'Kiran',
          'rating': '8.5',
          'hashtags': '#SuryaMagic #WellDirected #HeartfeltStory',
          'desc':
              '"Surya\'s Saturday" is a beautifully directed film that captures the essence of a transformative day in Surya’s life. The film excels in its portrayal of character development and emotional depth, with Surya delivering a compelling performance. The pacing is steady, and the narrative, though simple, is impactful. The film’s heartfelt story and Surya’s charismatic presence make it a memorable and touching experience.',
          'date': '2024-09-13', // Example date
        },
      ],
      'cast': [
        {
          'img': ImageConstants.SAIJU_KURUP,
          'name': 'Saiju Kurup',
        },
        {
          'img': ImageConstants.SAI_KUMAR,
          'name': 'Sai Kumar',
        },
        {
          'img': ImageConstants.SRUTHY_SURESH,
          'name': 'Sruthy Suresh',
        },
        {
          'img': ImageConstants.ABHIRAM_RADHAKRISHNAN,
          'name': 'Abhiram Radhakrishnan',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.KRISHNADAS_MURALI,
          'name': 'Krishnadas Murali',
          'role': 'Director, Writer'
        },
        {
          'img': ImageConstants.ANUPAMA_B_NAMBIAR,
          'name': 'Anupama B Nambiar',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.LINI_MARIAM_DAVID,
          'name': 'Lini Mariam David',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.SAMUEL_ABY,
          'name': 'Samuel Aby',
          'role': 'Musician'
        },
      ],
      'count': '5',
      'trailer_lang': ['മലയാളം', 'हिन्दी', 'தமிழ்', 'తెలుగు', 'ಕನ್ನಡ'],
      'trailer': [
        'https://youtu.be/fFH1xCDs4RU',
        'https://youtu.be/tnKhlp6NaVs',
        'https://youtu.be/9KUOQvF25NI',
        'https://youtu.be/Nt2czQKPD3I',
        'https://youtu.be/JpoV7ApW7zg',
      ],
      'ticket_rates': [
        '₹0 - ₹100',
        '₹101 - ₹200',
        '₹201 - ₹300',
        '₹301 - ₹400',
        '₹401 - ₹500'
      ],
      'rate_count': '5',
      '2D_theatre': [
        {
          'theatre_name': 'Sangeetha Cinema: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['12:00 PM', '03:00 PM', '06:00 PM', '09:00 PM'],
          'rate': [
            {'type': 'BLUE CIRCLE', 'rate': '₹350', 'avail': 'AVAILABLE'}
          ]
        },
        {
          'theatre_name': 'PVR Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['11:00 AM', '02:00 PM', '05:00 PM', '08:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Cinepolis: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['10:00 AM', '01:00 PM', '04:00 PM', '07:00 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
      ],
    },
    {
      'img': ImageConstants.VAAZHA,
      'rating': '8.9',
      'votes': '22.5K',
      'name': 'Vaazha - Biopic of a Billion Boys',
      'D': '2D',
      'lang': 'Malayalam',
      'duration': '2h 5m',
      'genre': 'Comedy, Drama',
      'age': 'UA',
      'date': '15 Aug, 2024',
      'desc':
          'Ajo, Vishnu, Moosa, and the team are labeled as `losers`. As they enter adulthood, the pressures from parents and society become overwhelming. Ultimately, love triumphs over judgement in this emotional tale of self-discovery and acceptance.',
      'thumb': ImageConstants.MD_VAAZHA,
      'reviews': [
        {
          'name': 'Aishwarya',
          'rating': '9',
          'hashtags': '#Heartwarming #ExceptionalStorytelling #MustWatch',
          'desc':
              '"Vaazha" is a beautifully crafted film that touches the heart with its poignant storytelling and exceptional performances. The film explores deep emotional themes with sensitivity and grace. The lead actor’s portrayal is both moving and compelling, supported by a strong supporting cast. The direction is superb, creating a narrative that is both engaging and thought-provoking. It’s a must-watch for those who appreciate heartfelt dramas and well-executed cinema.',
          'date': '2024-09-20', // Example date
        },
        {
          'name': 'Ravi',
          'rating': '8',
          'hashtags': '#EmotionalJourney #StrongPerformances #WellDirected',
          'desc':
              '"Vaazha" offers an emotional journey that is both engaging and impactful. The film’s storyline, focusing on personal growth and resilience, is well-developed and resonates with the audience. The performances are strong, particularly from the lead actor, who delivers a standout performance. The direction and cinematography enhance the film’s emotional depth. While some plot elements might feel predictable, the overall execution makes it a worthwhile watch.',
          'date': '2024-09-18', // Example date
        },
        {
          'name': 'Nisha',
          'rating': '7.5',
          'hashtags': '#ThoughtProvoking #GoodPerformances #PacingIssues',
          'desc':
              '"Vaazha" is a thought-provoking film with good performances from the cast. The story delves into meaningful themes and presents a compelling narrative. However, the pacing can be uneven, and some scenes feel drawn out, which affects the film’s overall flow. Despite these issues, the film succeeds in delivering a powerful message and features strong acting, making it a good watch for those interested in emotional dramas.',
          'date': '2024-09-16', // Example date
        },
        {
          'name': 'Kiran',
          'rating': '8.5',
          'hashtags': '#HeartfeltDrama #WellActed #CinematicExperience',
          'desc':
              '"Vaazha" is a heartfelt drama that excels in both storytelling and acting. The film’s exploration of human emotions and relationships is handled with care, and the lead actor’s performance is a highlight. The direction and production values are top-notch, contributing to a rich cinematic experience. While the film may have a few slow moments, its emotional depth and strong performances make it a memorable watch for fans of dramatic cinema.',
          'date': '2024-09-14', // Example date
        },
      ],
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '',
      'trailer_lang': ['MALAYALAM'],
      'trailer': ['https://youtu.be/EdsxhVLDLb4'],
      'ticket_rates': [
        '₹0 - ₹100',
        '₹101 - ₹200',
        '₹201 - ₹300',
        '₹301 - ₹400',
        '₹401 - ₹500'
      ],
      'rate_count': '5',
      '2D_theatre': [
        {
          'theatre_name': 'Lulu Mall Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['11:00 AM', '02:00 PM', '05:00 PM', '08:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Cinepolis Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['12:30 PM', '03:30 PM', '06:30 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Satyam Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['10:15 AM', '01:15 PM', '04:15 PM'],
          'rate': [
            {'type': 'BLUE CIRCLE', 'rate': '₹350', 'avail': 'AVAILABLE'}
          ]
        },
      ],
    },
    {
      'img': ImageConstants.VAAZHAII,
      'rating': '8.7',
      'votes': '10K',
      'name': 'Vaazhai',
      'D': '2D',
      'lang': 'Tamil',
      'duration': '2h 16m',
      'genre': 'Drama',
      'age': 'U',
      'date': '23 Aug, 2024',
      'desc':
          '12-year-old Sivanaindhan lives with his mother, sister, and friend in the village of Plantain Plantations. Hoping to seek a merry life, he lugs Plantains even during school holidays. Will his hard work pay off?',
      'thumb': ImageConstants.MD_VAAZHAII,
      'reviews': [
        {
          'name': 'Sanjay',
          'rating': '8.5',
          'hashtags': '#EmotionalDepth #PowerfulPerformances #MustWatch',
          'desc':
              '"Vaazhaii" is a touching film that delves deep into human emotions with exceptional storytelling and performances. The film’s narrative is both engaging and heartfelt, capturing the struggles and triumphs of its characters with sincerity. The lead actor delivers a powerful performance that anchors the film, supported by a talented cast. The direction and cinematography complement the story, making it a compelling watch. A must-see for those who appreciate emotionally resonant cinema.',
          'date': '2024-09-21', // Example date
        },
        {
          'name': 'Meera',
          'rating': '8',
          'hashtags': '#CompellingStory #GreatActing #VisualTreat',
          'desc':
              '"Vaazhaii" offers a compelling story that keeps the audience invested from start to finish. The film’s exploration of personal and social themes is both thought-provoking and engaging. The acting is top-notch, with standout performances that bring depth to the characters. The film’s visual presentation is also impressive, enhancing the overall experience. While the pace may occasionally lag, the film’s strong narrative and performances make it a worthwhile watch.',
          'date': '2024-09-19', // Example date
        },
        {
          'name': 'Arjun',
          'rating': '7.5',
          'hashtags': '#HeartfeltDrama #StrongLead #PacingIssues',
          'desc':
              '"Vaazhaii" is a heartfelt drama that shines through its lead actor’s performance and emotional storytelling. The film effectively captures the essence of its themes and offers moments of genuine impact. However, the pacing can be inconsistent, with some scenes feeling a bit prolonged. Despite this, the film’s emotional weight and the strength of its central performance make it a compelling watch for fans of drama.',
          'date': '2024-09-17', // Example date
        },
        {
          'name': 'Rita',
          'rating': '8.2',
          'hashtags': '#MovingFilm #WellCrafted #StrongCast',
          'desc':
              '"Vaazhaii" is a well-crafted film that delivers a moving story with strong performances from its cast. The film’s narrative is both engaging and emotionally resonant, providing a rich cinematic experience. The direction is solid, and the film’s attention to detail adds to its impact. While some plot developments might feel predictable, the overall execution and the cast’s performances make it a memorable and touching film.',
          'date': '2024-09-16', // Example date
        },
      ],
      'cast': [
        {
          'img': ImageConstants.SAIJU_KURUP,
          'name': 'Saiju Kurup',
        },
        {
          'img': ImageConstants.SAI_KUMAR,
          'name': 'Sai Kumar',
        },
        {
          'img': ImageConstants.SRUTHY_SURESH,
          'name': 'Sruthy Suresh',
        },
        {
          'img': ImageConstants.ABHIRAM_RADHAKRISHNAN,
          'name': 'Abhiram Radhakrishnan',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.KRISHNADAS_MURALI,
          'name': 'Krishnadas Murali',
          'role': 'Director, Writer'
        },
        {
          'img': ImageConstants.ANUPAMA_B_NAMBIAR,
          'name': 'Anupama B Nambiar',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.LINI_MARIAM_DAVID,
          'name': 'Lini Mariam David',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.SAMUEL_ABY,
          'name': 'Samuel Aby',
          'role': 'Musician'
        },
      ],
      'count': '',
      'trailer_lang': ['TAMIL'],
      'trailer': ['https://youtu.be/-NEVvOEPubA'],
      'ticket_rates': [
        '₹0 - ₹100',
        '₹101 - ₹200',
        '₹201 - ₹300',
        '₹301 - ₹400',
        '₹401 - ₹500'
      ],
      'rate_count': '5',
      '2D_theatre': [
        {
          'theatre_name': 'Lulu Mall Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['11:00 AM', '02:00 PM', '05:00 PM', '08:00 PM'],
          'rate': [
            {'type': 'RECLINAR', 'rate': '₹350', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC PLUS', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'PRIME', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'CLASSIC', 'rate': '₹160', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Cinepolis Cinemas: Kochi',
          'cancel': 'No Cancellation Available',
          'show_time': ['12:30 PM', '03:30 PM', '06:30 PM'],
          'rate': [
            {'type': 'PREMIUM', 'rate': '₹220', 'avail': 'AVAILABLE'},
            {'type': 'EXECUTIVE', 'rate': '₹200', 'avail': 'AVAILABLE'},
            {'type': 'NORMAL', 'rate': '₹170', 'avail': 'AVAILABLE'},
          ]
        },
        {
          'theatre_name': 'Satyam Cinemas: Kochi',
          'cancel': 'Cancellation Available',
          'show_time': ['10:15 AM', '01:15 PM', '04:15 PM'],
          'rate': [
            {'type': 'BLUE CIRCLE', 'rate': '₹350', 'avail': 'AVAILABLE'}
          ]
        },
      ],
    },
  ];

  static final List lollapalooza = [
    {'img': ImageConstants.LOL_1, 'title': "You're SO not ready for this!"},
    {'img': ImageConstants.LOL_2, 'title': "Watch your playlists come alive"},
    {'img': ImageConstants.LOL_3, 'title': "Unlock brand new core memories!"},
    {'img': ImageConstants.LOL_4, 'title': ""}
  ];

  static const List amusements = [
    {
      'img': ImageConstants.NIHARIKA,
      'name': 'Day Outing @Nihara Resort & Spa Kadamakudy Island',
      'category': 'Resorts',
      'price': '885 onwards | Zero Booking Fee',
      'date': 'Sun 8 Sep onwards'
    },
    {
      'img': ImageConstants.WONDERLA_ADVENTURE,
      'name': 'Wonderla Amusement Park',
      'category': 'Amusement Park',
      'price': '1064 onwards | Zero Booking Fee',
      'date': 'Sun 8 Sep onwards'
    },
    {
      'img': ImageConstants.WONDERLA_THEME,
      'name': 'Wonderla Amusement Park Kochi',
      'category': 'Theme park',
      'price': '1064 onwards | Zero Booking Fee',
      'date': 'Sun 8 Sep onwards'
    },
  ];

  static List week = [
    {
      'width': '100',
      'color': ColorConstants.TODAY,
      'text': 'PLAN FOR TODAY',
      'events': '5 Events'
    },
    {
      'width': '100',
      'color': ColorConstants.TOMORROW,
      'text': 'PLAN FOR TOMORROW',
      'events': '10+ Events'
    },
    {
      'width': '100',
      'color': ColorConstants.WEEKEND,
      'text': 'WEEKEND PLANS',
      'events': '15+ Events'
    },
  ];

  static const List category = [
    {
      'width': '150',
      'color': ColorConstants.COMEDY,
      'text': 'COMEDY\nSHOWS',
      'events': '15+ Events'
    },
    {
      'width': '150',
      'color': ColorConstants.KIDS,
      'text': 'KIDS',
      'events': '6 Events'
    },
    {
      'width': '150',
      'color': ColorConstants.MUSIC_SHOWS,
      'text': 'MUSIC\nSHOWS',
      'events': '7 Events'
    },
    {
      'width': '150',
      'color': ColorConstants.WORKSHOPS,
      'text': 'WORKSHOPS\n& MORE',
      'events': '4 Events'
    },
  ];

  static const List section11 = [
    {
      'img': ImageConstants.IMMACULATE,
      'name': 'Immaculate',
      'sec1': '1h 28m • Horror, Thriller • A',
      'lang': 'English, Hindi, Tamil, Telugu',
      'desc':
          'An American nun discovers that her new, idyllic convent in the Italian countryside is hiding sinister horrors.'
    },
    {
      'img': ImageConstants.GOLDRUN,
      'name': 'Gold Run',
      'sec1': '1h 58m • Drama,Suspense,War • 16+',
      'lang': 'Norwegian, Hindi, Tamil, Telugu',
      'desc':
          "Based on the true story of the effort to evacuate the entire Norwegian gold reserve out of Norway during the German invasion of Norway in World War II to keep the gold out of Germany's hands."
    },
    {
      'img': ImageConstants.NEERJA,
      'name': 'Neerja',
      'sec1': '1h 2m • Biography,Drama • U',
      'lang': 'Hindi',
      'desc':
          "Neerja is a biopic and a cinematic representation of the dramatic events that unfolded on September 5th, 1986 when Pan Am Flight 73 from Bombay to New York was hijacked at its transit at Jinnah International Airport in Karachi, by Palestinian extremists from Abu Nidal`s terrorist outfit. This is the story of Neerja Bhanot (Sonam Kapoor), a 22 year old part time model, who was the head purser on the flight. Neerja had escaped an abusive marriage at a very young age and as a life change, decided to become an air hostess, subsequently impressing everyone so much that they made her a purser. Throughout the horrifying situation, Neerja didn`t succumb to her fears and instead she fought her personal demons from the past and from the minute the plane was hijacked, through the terrifying 17 hours to the grueling end, she used her courage, wits and compassion to make sure that the passengers were protected, going as far as to hiding the passports of the American passengers. Through her swift thinking and brave actions, she managed to save the lives of 359 passengers and crew on board out of 379, all at the cost of her own life.\nNeerja posthumously became the youngest recipient of India`s highest civilian honour for bravery, the Ashoka Chakra, and was bestowed the Flight Safety Foundation Heroism award by U.S.A, Tamgha e Insaaniyat (awarded for showing incredible human kindness) by Pakistan, Justice for Crimes Award by United States Attorney`s office for the district of Columbia, Special Courage Award by the U.S. government and the Indian Civil Aviation Ministry`s Award as well. This is a portrayal of Neerja`s strength, courage and sacrifice and an attempt to bring before the world this lesser known Indian hero`s story, so that she becomes an example and inspiration to young girls all over for generations to come."
    },
    {
      'img': ImageConstants.THECHAPEL,
      'name': 'The Chapel',
      'sec1': '1h 47m • Supernatural, Thriller • U',
      'lang': 'Spanish, Hindi, Tamil, Telugu',
      'desc':
          '8-year-old Emma seeks help from a cynical medium to get in touch with the ghost of a girl trapped in a chapel.'
    },
    {
      'img': ImageConstants.TWISTERS,
      'name': 'Twisters',
      'sec1': '2h 2m • Action,Adventure, Thriller • UA',
      'lang': 'English, Hindi',
      'desc':
          "Kate Cooper, haunted by a devastating encounter with a tornado during her college years, studies storm patterns on screens safely in New York City. She is lured back to the open plains by her friend, Javi to test a groundbreaking new tracking system.\nThere, she crosses paths with Tyler Owens, the charming and reckless social-media superstar who thrives on posting his storm-chasing adventures with his raucous crew, the more dangerous the better."
    },
    {
      'img': ImageConstants.DREADFULCHAPTERS,
      'name': 'Dreadful Chapters',
      'sec1': '1h 13m • Mystery, Thriller • U',
      'lang': 'Malayalam',
      'desc':
          'Taking a road trip together, friends Albin, Pooja, Arjun, Martin, Shyam, and Sreedha get stranded in the middle of the forest while on their way to a vacation home. Still managing to make it to their destination, they decide to relax and have their originally scheduled fun and partying, only to eventually stumble upon a strange cave located on the property. Deciding to explore the cave, they are soon inundated with a series of strange incidents with a malevolent force inside the cave. They must leave the area.'
    },
  ];

  static const List event1 = [
    {
      'width': '150',
      'color': ColorConstants.WELLNESS,
      'text': 'WELLNESS\nEVENTS',
      'events': '6 Events'
    },
    {
      'width': '150',
      'color': ColorConstants.COMEDY_MUSIC_AND_MORE,
      'text': 'COMEDY MUSIC\n& MORE',
      'events': '10+ Events'
    },
    {
      'width': '150',
      'color': ColorConstants.COURSES_AND_MASTERCLASS,
      'text': 'COURSES &\nMASTERCLASS',
      'events': '3 Events'
    },
    {
      'width': '150',
      'color': ColorConstants.ENJOY_PLAYS_AND_PERFORMANCES,
      'text': 'ENJOY PLAYS &\nPERFORMANCES',
      'events': '4 Events'
    },
    {
      'width': '150',
      'color': ColorConstants.OUTDOOR_ADVENTURES,
      'text': 'OUTDOOR\nADVENTURES',
      'events': '7 Events'
    },
    {
      'width': '150',
      'color': ColorConstants.THRILLING_ACTIVITIES,
      'text': 'THRILLING\nACTIVITIES',
      'events': '7 Events'
    },
  ];
  static const List MUST_ATTEND_EVENTS = [
    {
      'img': ImageConstants.RAMBO_CIRCUS,
      'date': 'Thu, 12 Sep onwards',
      'name': 'Rambo Circus - Kochi',
      'location': 'Sree Gokulam Convention Centre, Kochi'
    },
    {
      'img': ImageConstants.SUNBURN,
      'date': 'Sun, 6 Oct',
      'name': 'Sunburn Arena Ft. Alan Walker - Kochi',
      'location': 'Bolgatty Palace and Island Resort: Kochi'
    },
    {
      'img': ImageConstants.JUSTMARRIED,
      'date': 'Sat, 14 Sep',
      'name': 'Just Married by Navin Kumar(English Stand Up Solo)',
      'location': 'Wire Up: Benglaru Stand up Comedy'
    },
    {
      'img': ImageConstants.READBETWEEN,
      'date': 'Wed, 18 Sep',
      'name': 'Read Between The Lines by Naveen Richard',
      'location': 'Spotlight Socials: Kochi Stand up Comedy'
    },
    {
      'img': ImageConstants.KSCHITRA,
      'date': 'Fri, 13 Sep',
      'name': 'Live Concert of Ks Chithra and Madhu Balakrishnan',
      'location': 'Winsor Castle Convention Centre: Kottayam'
    },
    {
      'img': ImageConstants.MALAYALAM,
      'date': 'Sat, 21 Sep onwards',
      'name': 'Malayalam Crowd Work Show',
      'location': 'Commons: Kochi'
    },
    {
      'img': ImageConstants.ONAM_SADHYA,
      'date': 'Sun, 15 Sep',
      'name': 'Onam Sadhya at Jetty, Forte Kochi Hotel',
      'location': 'Jetty And Poolside At Hotel Forte: Kochi'
    },
  ];

  static const List LAUGHTER_CATEGORY = [
    {
      'img': ImageConstants.READBETWEEN,
      'date': 'Wed, 18 Sep',
      'name': 'Read Between The Lines by Naveen Richard',
      'location': 'Spotlight Socials: Kochi Stand up Comedy'
    },
   

    {
      'img': ImageConstants.ABHISHEK_UPU,
      'date': 'Fri, 31 Jan',
      'name': 'Abhishek Upmanyu LIVE 2025 - Kochi',
      'location': 'JT Performing Arts Centre: Kochi'
    },
    {
      'img': ImageConstants.KISIKOBATANA,
      'date': 'Fri, 11 Oct onwards',
      'name': 'Kisi Ko Batana Mat Ft. Anubhav Singh Bassi',
      'location': 'Multiple Venues'
    },
    {
      'img': ImageConstants.SRIRAM,
      'date': 'Sun, 15 Sep',
      'name': 'Sriraam Padmanabhan Playing Devils Advocate',
      'location': 'The J Spot Juhu: Mumbai'
    },
   
    
  ];

  static const List Games = [
   
    
    {
      'img': ImageConstants.MAHATMA,
      'date': 'Sun, 6 Oct',
      'name': 'Mahatma Virtual Marathon - Get Medal by Courier',
      'location': 'Running'
    },
    {
      'img': ImageConstants.CHENNAYIN,
      'date': 'Thu, 31 Oct',
      'name': 'CHENNAIYIN FC 2024/25 CLUB MEMBERSHIP',
      'location': 'Football'
    },
    {
      'img': ImageConstants.CHESS,
      'date': 'Thu, 31 Oct',
      'name': 'Chess Championship (Online) For All Age',
      'location': 'Chess'
    },
    {
      'img': ImageConstants.ISL,
      'date': 'Wed, 2 Oct',
      'name': 'ISL 2024-25 Mumbai City FC - Membership',
      'location': 'Football'
    },
  ];

  static const List FUN_ACTIVITIES = [
    {
      'img': ImageConstants.NIHARIKA,
      'name': 'Day Outing @Nihara Resort & Spa Kadamakudy Island',
      'location': 'Resorts',
      'date': 'Sun 8 Sep onwards'
    },
    {
      'img': ImageConstants.WONDERLA_ADVENTURE,
      'name': 'Wonderla Amusement Park',
      'location': 'Amusement Park',
      'date': 'Sun, 8 Sep onwards'
    },
    {
      'img': ImageConstants.WONDERLA_THEME,
      'name': 'Wonderla Amusement Park Kochi',
      'location': 'Theme park',
      'date': 'Sun, 8 Sep onwards'
    },
    {
      'img': ImageConstants.KOCHI,
      'name': 'Kochi Island Tour',
      'location': 'Unique Tours',
      'date': 'Tue, 10 Sep onwards'
    },
    {
      'img': ImageConstants.INDIAN,
      'name': 'Indian Music Experience Museum',
      'location': 'Museums',
      'date': 'Tue, 10 Sep onwards'
    },
    {
      'img': ImageConstants.VALLAMKALI,
      'name': 'Vallam Kali - Snake Boat Race',
      'location': 'Unique Tours',
      'date': 'Sat, 28 Sep'
    },
    {
      'img': ImageConstants.ONAM_SADHYA,
      'date': 'Sun, 15 Sep',
      'name': 'Onam Sadhya at Jetty, Forte Kochi Hotel',
      'location': 'Festivals'
    },
  ];

  static const List MUSIC_STUDIO = [
    {
      'img': ImageConstants.SHILONG,
      'date': 'Fri, 15 Nov onwards',
      'name': 'Shillong Cherry Blosom Festival 2024',
      'location': 'RBDSA Sports Complex: Shilong',
      'category': 'Concerts'
    },
    {
      'img': ImageConstants.SUNBURN,
      'date': 'Sun, 6 Oct',
      'name': 'Sunburn Arena Ft. Alan Walker - Kochi',
      'location': 'Bolgatty Palace and Island Resort: Kochi',
      'category': 'Concerts'
    },
    // {
    //   'img': ImageConstants.LOL_1,
    //   'date': 'Sat, 8 Mar',
    //   'name': 'Lollapalooza India 2025',
    //   'location': 'Mumbai',
    //   'category': 'Concerts'
    // },

    {
      'img': ImageConstants.KSCHITRA,
      'date': 'Fri, 13 Sep',
      'name': 'Live Concert of Ks Chithra and Madhu Balakrishnan',
      'location': 'Winsor Castle Convention Centre: Kottayam',
      'category': 'Concerts'
    },
    {
      'img': ImageConstants.BANDLAND,
      'date': 'Sat, 23 Nov',
      'name': 'Bandland 2024',
      'location': 'Nice Grounds,BIEC: Bengaluru',
      'category': 'Concerts'
    },
  ];

  static const List search_list = [
    'Movies',
    'Sports',
    'Plays',
    'Activities',
    'Events'
  ];

  static const List bank_offers = [
    {
      'img': ImageConstants.FEDERAL_BANK,
      'msg1': 'Buy one ticket, get one ticket free',
      'img2': 'Tap to view details',
      'expiry': 'Expires on 30-09-2024',
      'desc':
          "• Buy one ticket and Get One ticket free upto INR 250 with Federal Bank credit cards.\n\n• The Offer valid on all days of the week\n\n• Offer valid once per card per month.\n\n• Card members can avail maximum discount value up to INR  250.\n\n• Customers will have to book minimum 2 tickets to avail the offer\n\n•Offer is valid till 30th September 2024"
    },
    {
      'img': ImageConstants.ICICI_BANK,
      'msg1': 'ICICI Bank Complimentary Ticket Offer',
      'img2': 'Tap to view details',
      'expiry': 'Expires on 31-03-2025',
      'desc':
          "• Get Complimentary Tickets with your ICICI Bank Credit Card\n\n• Minimum 2 tickets need to be brought in order to avail the offer\n\n• Offer only on selected ICICI Bank Credit Cards Offer is valid till 31st March, 2025\n\n• This offer is applicable on both movies and events\n\nNote:\n\nICICI Bank American Express Credit cards that are eligible for Discounts or Buy one get one (BOGO) free offer on BookMyShow will not be given upfront discount offer but will be provided as cashback by the ICICI Bank.",
    },
    {
      'img': ImageConstants.ICICI_BANK,
      'msg1': 'ICICI Bank Credit Card 25% Discount Offer',
      'img2': 'Tap to view details',
      'expiry': 'Expires on 31-03-2025',
      'desc':
          "• Get Complimentary Tickets with your ICICI Bank Credit Card\n\n• Minimum 2 tickets need to be brought in order to avail the offer\n\n• Offer only on selected ICICI Bank Credit Cards Offer is valid till 31st March, 2025\n\n• This offer is applicable on both movies and events\n\nNote:\n\nICICI Bank American Express Credit cards that are eligible for Discounts or Buy one get one (BOGO) free offer on BookMyShow will not be given upfront discount offer but will be provided as cashback by the ICICI Bank.",
    },
  ];

  static const List lol_in = [
    ImageConstants.LOL_IN1,
    ImageConstants.LOL_IN2,
    ImageConstants.LOL_IN3,
    ImageConstants.LOL_IN4,
  ];

  static const List frequently_asked = [
    {
      'quest': 'When is the event taking place?',
      'ans':
          'Lolla India will return for its third edition on March 8-9, 2025 at Mumbai'
    },
    {
      'quest': 'Where will Lollapalooza 2025 be held?',
      'ans':
          'The event will be held in Mumbai, India, at the Mahalaxmi Race Course.'
    },
    {
      'quest': 'How can I purchase tickets for Lollapalooza 2025?',
      'ans':
          'Tickets will be available online through the official Lollapalooza website and authorized ticketing partners.'
    },
    {
      'quest': 'What are the main headliners for Lollapalooza 2025?',
      'ans':
          'The headliners for Lollapalooza 2025 will be announced closer to the event, featuring both international and local artists.'
    },
    {
      'quest': 'Will there be any COVID-19 restrictions or guidelines?',
      'ans':
          'As of now, no specific restrictions have been announced. Attendees are encouraged to check the official site for the latest health guidelines closer to the event.'
    },
    {
      'quest':
          'Are there any age restrictions for attending Lollapalooza 2025?',
      'ans':
          'Lollapalooza is open to all ages, but attendees under 18 must be accompanied by an adult.'
    }
  ];

  static const List terms = [
    {
      'term':
          'Tickets purchased for Lollapalooza 2025 are non-transferable and must be used by the person whose name is on the ticket. Unauthorized resale or transfer of tickets is prohibited. Entry to the event requires a valid ticket and compliance with all event rules and security checks. The event organizers reserve the right to refuse entry to anyone who does not meet these criteria.'
    },
    {
      'term':
          'Attendees are expected to behave respectfully towards others, including fellow attendees, staff, and performers. Aggressive behavior, violence, harassment, or any form of discrimination will not be tolerated and may result in immediate removal from the event. Such behavior may also lead to legal action if necessary.'
    },
    {
      'term':
          'The following items are strictly prohibited at the event: weapons, illegal drugs, outside food and beverages (except for medical reasons), professional cameras and video recording equipment, and any flammable materials. Attendees found in possession of prohibited items will be removed from the event, and the items will be confiscated.'
    },
    {
      'term':
          'Attendees must adhere to all health and safety regulations in place, including any COVID-19-related protocols. Failure to comply with these regulations may result in removal from the event. Attendees are responsible for their own health and safety and should take necessary precautions based on their personal health conditions.'
    },
    {
      'term':
          'The event organizers reserve the right to modify the event schedule, lineup, or other aspects without prior notice. In case of event cancellation due to unforeseen circumstances, such as severe weather or governmental restrictions, refunds will be processed according to the organizers’ policy. No refunds will be issued for changes to the event lineup or schedule.'
    }
  ];

  static const List movie_lang = [
    'Malayalam',
    'English',
    'Hindi',
    'Tamil',
  ];

  static const List upcoming_movies = [
    {
      'img': ImageConstants.DEVARA,
      'likes': '453.8K',
      'name': "Devara - Part 1",
      'D': '2D',
      'lang': 'Malayalam, Telugu, Hindi, Tamil, Kannada',
      'duration': '2h 57m',
      'genre': 'Action/Drama/Thriller',
      'age': 'UA',
      'date': '27 Sep,2024',
      'desc':
          "The film`s backdrop is centered around the far and forgotten coastal lands of India.The people,or rather the villains,in the film neither fear death nor god and there is no sense of humanity among them. Devara changes this scenario in his inimitable style.",
      'thumb': ImageConstants.DEVARA,
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '10',
      'trailer_lang': ['తెలుగు', 'हिन्दी', 'ಕನ್ನಡ', 'தமிழ்', 'മലയാളം'],
      'trailer': [
        'https://youtu.be/5cx7rvMvAWo',
        'https://youtu.be/rc61YHl1PFY',
        'https://youtu.be/NcCYq3bvlJM',
        'https://youtu.be/J1g-8hBwj3I',
        'https://youtu.be/FUGcRzAFAD8',
        'https://youtu.be/0aCqlN9IbC4',
        'https://youtu.be/f3Tz-oGl52o',
        'https://youtu.be/WTcSeqf555c',
        'https://youtu.be/byEjl2kJGK0',
        'https://youtu.be/qB7kO-Z-zjU'
      ]
    },
    {
      'img': ImageConstants.MARTIN,
      'likes': '232.6K',
      'name': "Martin",
      'D': '2D',
      'lang': 'Malayalam, Telugu, Hindi, Tamil, Kannada',
      'duration': '',
      'genre': 'Action/Drama/Thriller',
      'age': 'UA',
      'date': '11 Oct, 2024',
      'desc':
          "Martin is a pulse pounding edge of the seat action thriller. A character whose dramatic journey takes him to the length and breadth of the country to fight against evil forces lurking to destroy India. But he is also in love with a beautiful lass. His journey is of discovering himself, finding love and fighting for his motherland. Can he hold the fort on all three gates?",
      'thumb': ImageConstants.MARTIN,
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '',
      'trailer_lang': ['Kannada'],
      'trailer': ['https://youtu.be/fqLCas2sWW0']
    },
    {
      'img': ImageConstants.VENOM,
      'likes': '84.1K',
      'name': "Venom: The Last Dance",
      'D': '2D',
      'lang': 'English, Telugu, Hindi, Tamil',
      'duration': '',
      'genre': 'Action/Adventure/Sci-Fi',
      'age': '',
      'date': '25 Oct, 2024',
      'desc':
          "Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie`s last dance.",
      'thumb': ImageConstants.VENOM,
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '8',
      'trailer_lang': ['Others', 'हिन्दी', 'தமிழ்', 'తెలుగు'],
      'trailer': [
        'https://youtu.be/8cAkGmzUqOY',
        'https://youtu.be/MbIoY50ZOxg',
        'https://youtu.be/idqfhoa4qu4',
        'https://youtu.be/VWB8RM9qHPg',
        'https://youtu.be/2f0JZT_xwW4',
        'https://youtu.be/jbkxueTk3CA',
        'https://youtu.be/nHPz7tYgoy0',
        'https://youtu.be/ycjaN1-IVM4'
      ]
    },
    {
      'img': ImageConstants.KANGUVA,
      'likes': '71.1K',
      'name': "Kanguva",
      'D': '2D',
      'lang': 'Tamil',
      'duration': '',
      'genre': 'Action/Adventure/Fantasy/Period',
      'age': '',
      'date': 'Nov, 2024',
      'desc':
          "Prepare to witness, epic emotions, raw rage, primal courage, ruthless revenge in its purest form.",
      'thumb': ImageConstants.KANGUVA,
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '3',
      'trailer_lang': ['தமிழ்'],
      'trailer': [
        'https://youtu.be/ajnCMSC4VPo',
        'https://youtu.be/ByCDEmNig7Q',
        'https://youtu.be/QYveXoqd-zY'
      ]
    },
    {
      'img': ImageConstants.BHOOL,
      'likes': '34.2K',
      'name': "Bhool Bhulaiyaa 3",
      'D': '2D',
      'lang': 'Hindi',
      'duration': '',
      'genre': 'Comedy/Horror',
      'age': '',
      'date': '1 Nov, 2024',
      'desc':
          "Gear up to tickle your funny bones with some thrill. The gates of `haveli` will now open again for Bhool Bhulaiyaa 3!.",
      'thumb': ImageConstants.BHOOL,
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '',
      'trailer_lang': ['Hindi'],
      'trailer': ['https://youtu.be/LWevIKJVDDk']
    },
    {
      'img': ImageConstants.LUCKY,
      'likes': '13.7K',
      'name': "Lucky Baskar",
      'D': '2D',
      'lang': 'Hindi, Malayalam, Tamil, Telugu',
      'duration': '',
      'genre': 'Drama',
      'age': '',
      'date': '1 Nov, 2024',
      'desc': "Gear up to witness the extra -ordinary tale of Lucky Bhaskar..",
      'thumb': ImageConstants.LUCKY,
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '',
      'trailer_lang': ['Malayalam'],
      'trailer': [
        'https://youtu.be/74qadvgn3V0',
      ]
    },
    {
      'img': ImageConstants.OBBATU,
      'likes': '1K',
      'name': "Obbattu",
      'D': '2D',
      'lang': 'Kannada',
      'duration': '1h 51m',
      'genre': 'Suspense',
      'age': '',
      'date': '25 Oct, 2024',
      'desc':
          "The story revolves around a woman named Ganga, who loves Shiva and wants to marry him. One day, Ganga invites Shiva to her home to serve him the sweet dish Obbattu, but Seena an uninvited guest who constantly pursues her arrives instead. Seena gets hiccups, and Ganga goes to get water. Meanwhile, Shiva arrives and plays a prank on Seena. When Ganga returns, they find Seena dead. Unaware of the real conspiracy behind his death, both Ganga and Shiva blame themselves. The story unfolds with suspense, confusion, and comedy as they try to hide the body and uncover the real reason behind his death.",
      'thumb': ImageConstants.OBBATU,
      'cast': [
        {
          'img': ImageConstants.VIJAY,
          'name': 'Vijay',
        },
        {
          'img': ImageConstants.KOKILA_MOHAN,
          'name': 'Kokila Mohan',
        },
        {
          'img': ImageConstants.YOGI_BABU,
          'name': 'Yogi Babu',
        },
        {
          'img': ImageConstants.PRASANTH_THIAGARAJAN,
          'name': 'Prashanth Thiagarajan',
        },
        {
          'img': ImageConstants.PRABHU_DEVA,
          'name': 'Prabhu Deva',
        },
        {
          'img': ImageConstants.JAYARAM,
          'name': 'Jayaram Subramaniam',
        },
        {
          'img': ImageConstants.SNEHA_PRASANAN,
          'name': 'Sneha Prasanna',
        },
      ],
      'crew': [
        {
          'img': ImageConstants.VENKAT_PRABHU,
          'name': 'Venkat Prabhu',
          'role': 'Director, Writer, Screenplay'
        },
        {
          'img': ImageConstants.KALPATHI_AGHORAM,
          'name': 'Kalpathi S Aghoram',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_GANESH,
          'name': 'Kalpathi S Ganesh',
          'role': 'Producer'
        },
        {
          'img': ImageConstants.KALPATHI_SURESH,
          'name': 'Kalpathi S Suresh',
          'role': 'Producer'
        },
      ],
      'count': '',
      'trailer_lang': [],
      'trailer': []
    },
  ];

  static final List rating_one = [
    '#DirectionWorks',
    '#CoolMusic',
    '#QuietNice',
    '#Entertaining',
    '#Timepass',
    '#Fun',
    '#Interesting',
    '#NiceStory',
    '#OneTimeWatch'
  ];
  static final List rating_two = [
    '#OkDirection',
    '#HitMovie',
    '#LovelyMusic',
    '#GoodActing',
    '#OneTimeWatch',
    '#FunWatch',
    '#GoodMusic',
    '#NiceStory',
    '#Enjoyable'
  ];
  static final List rating_three = [
    '#SuperDirection',
    '#Rocking',
    '#Inspiring',
    '#GreatActing',
    '#BlockBuster',
    '#WellMade',
    '#WowMusic',
    '#AwesomeStory',
    '#Unbelievable'
  ];

  static final List location = [
    {'img': ImageConstants.MUMBAI, 'name': 'Mumbai'},
    {'img': ImageConstants.DELHI, 'name': 'Delhi-NCR'},
    {'img': ImageConstants.BENGALARU, 'name': 'Bengaluru'},
    {'img': ImageConstants.HYDREBAD, 'name': 'Hydrebad'},
    {'img': ImageConstants.AHMEDABAD, 'name': 'Ahmedabad'},
    {'img': ImageConstants.CHANDIGARH, 'name': 'Chandigarh'},
    {'img': ImageConstants.CHENNAI, 'name': 'Chennai'},
    {'img': ImageConstants.PUNE, 'name': 'Pune'},
    {'img': ImageConstants.KOLKATA, 'name': 'Kolkata'},
    {'img': ImageConstants.KOCHI_CITY, 'name': 'Kochi'},
  ];

  static final List<String> cities = [
    'Aalo',
    'Abohar',
    'Agra',
    'Ahmedabad',
    'Ajmer',
    'Alappuzha',
    'Aligarh',
    'Allahabad',
    'Amritsar',
    'Bangalore',
    'Bhopal',
    'Bhubaneswar',
    'Chandigarh',
    'Chennai',
    'Coimbatore',
    'Delhi',
    'Dehradun',
    'Gandhinagar',
    'Guwahati',
    'Hyderabad',
    'Indore',
    'Jaipur',
    'Jaisalmer',
    'Jammu',
    'Jodhpur',
    'Kolkata',
    'Kozhikode',
    'Lucknow',
    'Ludhiana',
    'Mumbai',
    'Nagpur',
  ];

  static const List bottomGradient = [
    {
      'width':'100',
      'color':ColorConstants.TODAY,
      'bottomtext':'Performances'
    },
    {
      'width':'100',
      'color':ColorConstants.TOMORROW,
      'bottomtext':'Music\nShows'
    },
    {
      'width':'100',
      'color':ColorConstants.WEEKEND,
      'bottomtext':'Kids'
    },
    {
      'width':'100',
      'color':ColorConstants.COMEDY,
      'bottomtext':'Sports'
    },
    {
      'width':'100',
      'color':ColorConstants.KIDS,
      'bottomtext':'Meetups'
    },
  ];
}
